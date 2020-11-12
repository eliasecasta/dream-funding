require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Model Tests' do
    it 'Should not be able to create 2 users with the same mail' do
      _user1 = create(:user, name: 'Test1', email: 'test@test.com')

      expect { create(:user, name: 'Test2', email: 'test@test.com') }.to raise_error(
        ActiveRecord::RecordInvalid, 'Validation failed: Email has already been taken'
      )
    end
  end
end
