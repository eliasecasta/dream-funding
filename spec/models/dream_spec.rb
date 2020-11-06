require 'rails_helper'

RSpec.describe Dream, type: :model do
  describe 'Dream model tests' do
    it 'Empty dream content should not be valid' do
      expect { create(:dream, name: '', money_objective: '') }.to(
        raise_error(ActiveRecord::RecordInvalid)
      )
    end
    it 'Dream cannot be created by a blank user' do
      expect { create(:dream, user: nil) }.to(
        raise_error(ActiveRecord::RecordInvalid)
      )
    end
    it 'Should belong to User' do
      should belong_to(:user)
    end
    it 'Should have many Donations' do
      should have_many(:donations)
    end
    it 'Created a valid dream' do
      expect(create(:dream)).to be_valid
    end
  end
end
