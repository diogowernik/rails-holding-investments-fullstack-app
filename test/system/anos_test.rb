require "application_system_test_case"

class AnosTest < ApplicationSystemTestCase
  setup do
    @ano = anos(:one)
  end

  test "visiting the index" do
    visit anos_url
    assert_selector "h1", text: "Anos"
  end

  test "creating a Ano" do
    visit anos_url
    click_on "New Ano"

    fill_in "Ano", with: @ano.ano
    click_on "Create Ano"

    assert_text "Ano was successfully created"
    click_on "Back"
  end

  test "updating a Ano" do
    visit anos_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @ano.ano
    click_on "Update Ano"

    assert_text "Ano was successfully updated"
    click_on "Back"
  end

  test "destroying a Ano" do
    visit anos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ano was successfully destroyed"
  end
end
