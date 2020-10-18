require "application_system_test_case"

class AtivoMovesTest < ApplicationSystemTestCase
  setup do
    @ativo_move = ativo_moves(:one)
  end

  test "visiting the index" do
    visit ativo_moves_url
    assert_selector "h1", text: "Ativo Moves"
  end

  test "creating a Ativo move" do
    visit ativo_moves_url
    click_on "New Ativo Move"

    fill_in "Ativo", with: @ativo_move.ativo_id
    fill_in "Carteira", with: @ativo_move.carteira_id
    fill_in "Codigo", with: @ativo_move.codigo
    fill_in "Corretora", with: @ativo_move.corretora_id
    fill_in "Data", with: @ativo_move.data
    fill_in "Investimento", with: @ativo_move.investimento_id
    fill_in "Movimento", with: @ativo_move.movimento
    fill_in "Quantidade", with: @ativo_move.quantidade
    fill_in "Tipo", with: @ativo_move.tipo_id
    fill_in "Valor", with: @ativo_move.valor
    click_on "Create Ativo move"

    assert_text "Ativo move was successfully created"
    click_on "Back"
  end

  test "updating a Ativo move" do
    visit ativo_moves_url
    click_on "Edit", match: :first

    fill_in "Ativo", with: @ativo_move.ativo_id
    fill_in "Carteira", with: @ativo_move.carteira_id
    fill_in "Codigo", with: @ativo_move.codigo
    fill_in "Corretora", with: @ativo_move.corretora_id
    fill_in "Data", with: @ativo_move.data
    fill_in "Investimento", with: @ativo_move.investimento_id
    fill_in "Movimento", with: @ativo_move.movimento
    fill_in "Quantidade", with: @ativo_move.quantidade
    fill_in "Tipo", with: @ativo_move.tipo_id
    fill_in "Valor", with: @ativo_move.valor
    click_on "Update Ativo move"

    assert_text "Ativo move was successfully updated"
    click_on "Back"
  end

  test "destroying a Ativo move" do
    visit ativo_moves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ativo move was successfully destroyed"
  end
end
