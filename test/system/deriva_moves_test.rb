require "application_system_test_case"

class DerivaMovesTest < ApplicationSystemTestCase
  setup do
    @deriva_move = deriva_moves(:one)
  end

  test "visiting the index" do
    visit deriva_moves_url
    assert_selector "h1", text: "Deriva Moves"
  end

  test "creating a Deriva move" do
    visit deriva_moves_url
    click_on "New Deriva Move"

    fill_in "Carteira", with: @deriva_move.carteira_id
    fill_in "Data", with: @deriva_move.data
    fill_in "Derivativo", with: @deriva_move.derivativo_id
    fill_in "Estado", with: @deriva_move.estado_id
    fill_in "Movimento", with: @deriva_move.movimento
    fill_in "Quantidade", with: @deriva_move.quantidade
    fill_in "Valor", with: @deriva_move.valor
    click_on "Create Deriva move"

    assert_text "Deriva move was successfully created"
    click_on "Back"
  end

  test "updating a Deriva move" do
    visit deriva_moves_url
    click_on "Edit", match: :first

    fill_in "Carteira", with: @deriva_move.carteira_id
    fill_in "Data", with: @deriva_move.data
    fill_in "Derivativo", with: @deriva_move.derivativo_id
    fill_in "Estado", with: @deriva_move.estado_id
    fill_in "Movimento", with: @deriva_move.movimento
    fill_in "Quantidade", with: @deriva_move.quantidade
    fill_in "Valor", with: @deriva_move.valor
    click_on "Update Deriva move"

    assert_text "Deriva move was successfully updated"
    click_on "Back"
  end

  test "destroying a Deriva move" do
    visit deriva_moves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deriva move was successfully destroyed"
  end
end
