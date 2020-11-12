require 'rails_helper'

RSpec.describe Donation, type: :model do
  describe 'Donation model tests' do
    it 'Created a valid donation' do
      create(:dream)
      expect(create(:donation, dream_id: '1')).to be_valid
    end
    it 'Empty donation content should not be valid' do
      expect { create(:donation, name: '', amount: '') }.to(
        raise_error(
          ActiveRecord::RecordInvalid
        )
      )
    end
    it 'Donation cannot be created by a blank user' do
      expect { create(:donation, author: nil) }.to(
        raise_error(ActiveRecord::RecordInvalid)
      )
    end
    it 'Should belong to User' do
      should belong_to(:author)
    end
    it 'Should have many Dreams' do
      should_not belong_to(:dreams)
    end
  end
end
