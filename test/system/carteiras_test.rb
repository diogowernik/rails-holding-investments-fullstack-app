require "application_system_test_case"

class CarteirasTest < ApplicationSystemTestCase
  setup do
    @carteira = carteiras(:one)
  end

  test "visiting the index" do
    visit carteiras_url
    assert_selector "h1", text: "Carteiras"
  end

  test "creating a Carteira" do
    visit carteiras_url
    click_on "New Carteira"

    fill_in "Nome", with: @carteira.nome
    fill_in "User", with: @carteira.user_id
    click_on "Create Carteira"

    assert_text "Carteira was successfully created"
    click_on "Back"
  end

  test "updating a Carteira" do
    visit carteiras_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @carteira.nome
    fill_in "User", with: @carteira.user_id
    click_on "Update Carteira"

    assert_text "Carteira was successfully updated"
    click_on "Back"
  end

  test "destroying a Carteira" do
    visit carteiras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carteira was successfully destroyed"
  end
end
