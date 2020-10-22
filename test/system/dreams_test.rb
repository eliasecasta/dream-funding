require "application_system_test_case"

class DreamsTest < ApplicationSystemTestCase
  setup do
    @dream = dreams(:one)
  end

  test "visiting the index" do
    visit dreams_url
    assert_selector "h1", text: "Dreams"
  end

  test "creating a Dream" do
    visit dreams_url
    click_on "New Dream"

    fill_in "Icon", with: @dream.icon
    fill_in "Money objective", with: @dream.money_objective
    fill_in "Name", with: @dream.name
    fill_in "User", with: @dream.user_id
    click_on "Create Dream"

    assert_text "Dream was successfully created"
    click_on "Back"
  end

  test "updating a Dream" do
    visit dreams_url
    click_on "Edit", match: :first

    fill_in "Icon", with: @dream.icon
    fill_in "Money objective", with: @dream.money_objective
    fill_in "Name", with: @dream.name
    fill_in "User", with: @dream.user_id
    click_on "Update Dream"

    assert_text "Dream was successfully updated"
    click_on "Back"
  end

  test "destroying a Dream" do
    visit dreams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dream was successfully destroyed"
  end
end
