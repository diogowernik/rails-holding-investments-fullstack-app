require "application_system_test_case"

class DerivativosTest < ApplicationSystemTestCase
  setup do
    @derivativo = derivativos(:one)
  end

  test "visiting the index" do
    visit derivativos_url
    assert_selector "h1", text: "Derivativos"
  end

  test "creating a Derivativo" do
    visit derivativos_url
    click_on "New Derivativo"

    fill_in "Ativo", with: @derivativo.ativo_id
    fill_in "Codigo", with: @derivativo.codigo
    fill_in "Estado", with: @derivativo.estado_id
    fill_in "Strike", with: @derivativo.strike
    fill_in "Tipo", with: @derivativo.tipo
    fill_in "Vencimento", with: @derivativo.vencimento
    click_on "Create Derivativo"

    assert_text "Derivativo was successfully created"
    click_on "Back"
  end

  test "updating a Derivativo" do
    visit derivativos_url
    click_on "Edit", match: :first

    fill_in "Ativo", with: @derivativo.ativo_id
    fill_in "Codigo", with: @derivativo.codigo
    fill_in "Estado", with: @derivativo.estado_id
    fill_in "Strike", with: @derivativo.strike
    fill_in "Tipo", with: @derivativo.tipo
    fill_in "Vencimento", with: @derivativo.vencimento
    click_on "Update Derivativo"

    assert_text "Derivativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Derivativo" do
    visit derivativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Derivativo was successfully destroyed"
  end
end
