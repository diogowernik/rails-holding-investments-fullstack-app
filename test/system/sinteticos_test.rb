require "application_system_test_case"

class SinteticosTest < ApplicationSystemTestCase
  setup do
    @sintetico = sinteticos(:one)
  end

  test "visiting the index" do
    visit sinteticos_url
    assert_selector "h1", text: "Sinteticos"
  end

  test "creating a Sintetico" do
    visit sinteticos_url
    click_on "New Sintetico"

    fill_in "Abr", with: @sintetico.abr
    fill_in "Ago", with: @sintetico.ago
    fill_in "Ano", with: @sintetico.ano_id
    fill_in "Carteira", with: @sintetico.carteira_id
    fill_in "Dez", with: @sintetico.dez
    fill_in "Fev", with: @sintetico.fev
    fill_in "Jan", with: @sintetico.jan
    fill_in "Jul", with: @sintetico.jul
    fill_in "Jun", with: @sintetico.jun
    fill_in "Mai", with: @sintetico.mai
    fill_in "Mar", with: @sintetico.mar
    fill_in "Nov", with: @sintetico.nov
    fill_in "Out", with: @sintetico.out
    fill_in "Set", with: @sintetico.set
    click_on "Create Sintetico"

    assert_text "Sintetico was successfully created"
    click_on "Back"
  end

  test "updating a Sintetico" do
    visit sinteticos_url
    click_on "Edit", match: :first

    fill_in "Abr", with: @sintetico.abr
    fill_in "Ago", with: @sintetico.ago
    fill_in "Ano", with: @sintetico.ano_id
    fill_in "Carteira", with: @sintetico.carteira_id
    fill_in "Dez", with: @sintetico.dez
    fill_in "Fev", with: @sintetico.fev
    fill_in "Jan", with: @sintetico.jan
    fill_in "Jul", with: @sintetico.jul
    fill_in "Jun", with: @sintetico.jun
    fill_in "Mai", with: @sintetico.mai
    fill_in "Mar", with: @sintetico.mar
    fill_in "Nov", with: @sintetico.nov
    fill_in "Out", with: @sintetico.out
    fill_in "Set", with: @sintetico.set
    click_on "Update Sintetico"

    assert_text "Sintetico was successfully updated"
    click_on "Back"
  end

  test "destroying a Sintetico" do
    visit sinteticos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sintetico was successfully destroyed"
  end
end
