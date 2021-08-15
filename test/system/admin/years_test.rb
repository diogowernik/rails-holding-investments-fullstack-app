require "application_system_test_case"

class Admin::YearsTest < ApplicationSystemTestCase
  setup do
    @admin_year = admin_years(:one)
  end

  test "visiting the index" do
    visit admin_years_url
    assert_selector "h1", text: "Admin/Years"
  end

  test "creating a Year" do
    visit admin_years_url
    click_on "New Admin/Year"

    click_on "Create Year"

    assert_text "Year was successfully created"
    click_on "Back"
  end

  test "updating a Year" do
    visit admin_years_url
    click_on "Edit", match: :first

    click_on "Update Year"

    assert_text "Year was successfully updated"
    click_on "Back"
  end

  test "destroying a Year" do
    visit admin_years_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Year was successfully destroyed"
  end
end
