require 'rails_helper'

RSpec.describe "devise/registrations/new", type: :system do
  describe "User Authentication" do
    it "Should redirect to user sign in" do
      visit root_path
      expect(page).to have_content('Sign up')
    end
    it "Should be able to log in and go to the Dreams index" do
      login_user

      visit root_path
      expect(page).to have_content('My Dreams')
    end
    it "Should be able to access the New Dream form" do
      login_user

      visit root_path
      click_link 'New Dream'
      expect(page).to have_content('New Dream')
    end
  end
end
