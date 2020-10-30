require 'rails_helper'

RSpec.describe Dream, type: :model do
  describe "Dream model tests" do
    it "Empty dream content should not be valid" do
      expect { create(:dream, name: '', money_objective: '') }.to(
        raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank, Name is too short (minimum is 5 characters), Money objective can't be blank, Money objective is not a number" )
      )
    end
    it "Dream cannot be created by a blank user" do
      expect { create(:dream, user: nil) }.to(
        raise_error(ActiveRecord::RecordInvalid)
      )
    end
    it "Should belong to User" do
      should belong_to(:user)
    end
    it "Should have many Donations" do
      should have_many(:donations)
    end
    it 'Created a valid dream' do
      expect(create(:dream)).to be_valid
    end
  end
end
