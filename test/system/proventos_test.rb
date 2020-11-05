require "application_system_test_case"

class ProventosTest < ApplicationSystemTestCase
  setup do
    @provento = proventos(:one)
  end

  test "visiting the index" do
    visit proventos_url
    assert_selector "h1", text: "Proventos"
  end

  test "creating a Provento" do
    visit proventos_url
    click_on "New Provento"

    fill_in "Abr", with: @provento.abr
    fill_in "Ago", with: @provento.ago
    fill_in "Ano", with: @provento.ano_id
    fill_in "Carteira", with: @provento.carteira_id
    fill_in "Dez", with: @provento.dez
    fill_in "Fev", with: @provento.fev
    fill_in "Jan", with: @provento.jan
    fill_in "Jul", with: @provento.jul
    fill_in "Jun", with: @provento.jun
    fill_in "Mai", with: @provento.mai
    fill_in "Mar", with: @provento.mar
    fill_in "Nov", with: @provento.nov
    fill_in "Out", with: @provento.out
    fill_in "Set", with: @provento.set
    click_on "Create Provento"

    assert_text "Provento was successfully created"
    click_on "Back"
  end

  test "updating a Provento" do
    visit proventos_url
    click_on "Edit", match: :first

    fill_in "Abr", with: @provento.abr
    fill_in "Ago", with: @provento.ago
    fill_in "Ano", with: @provento.ano_id
    fill_in "Carteira", with: @provento.carteira_id
    fill_in "Dez", with: @provento.dez
    fill_in "Fev", with: @provento.fev
    fill_in "Jan", with: @provento.jan
    fill_in "Jul", with: @provento.jul
    fill_in "Jun", with: @provento.jun
    fill_in "Mai", with: @provento.mai
    fill_in "Mar", with: @provento.mar
    fill_in "Nov", with: @provento.nov
    fill_in "Out", with: @provento.out
    fill_in "Set", with: @provento.set
    click_on "Update Provento"

    assert_text "Provento was successfully updated"
    click_on "Back"
  end

  test "destroying a Provento" do
    visit proventos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provento was successfully destroyed"
  end
end
