require "application_system_test_case"

class InvestimentosTest < ApplicationSystemTestCase
  setup do
    @investimento = investimentos(:one)
  end

  test "visiting the index" do
    visit investimentos_url
    assert_selector "h1", text: "Investimentos"
  end

  test "creating a Investimento" do
    visit investimentos_url
    click_on "New Investimento"

    fill_in "Carteira", with: @investimento.carteira_id
    fill_in "Quantidade", with: @investimento.quantidade
    fill_in "Ticker", with: @investimento.ticker
    click_on "Create Investimento"

    assert_text "Investimento was successfully created"
    click_on "Back"
  end

  test "updating a Investimento" do
    visit investimentos_url
    click_on "Edit", match: :first

    fill_in "Carteira", with: @investimento.carteira_id
    fill_in "Quantidade", with: @investimento.quantidade
    fill_in "Ticker", with: @investimento.ticker
    click_on "Update Investimento"

    assert_text "Investimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Investimento" do
    visit investimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Investimento was successfully destroyed"
  end
end
