require "application_system_test_case"

class DerivaTiposTest < ApplicationSystemTestCase
  setup do
    @deriva_tipo = deriva_tipos(:one)
  end

  test "visiting the index" do
    visit deriva_tipos_url
    assert_selector "h1", text: "Deriva Tipos"
  end

  test "creating a Deriva tipo" do
    visit deriva_tipos_url
    click_on "New Deriva Tipo"

    fill_in "Tipo", with: @deriva_tipo.tipo
    click_on "Create Deriva tipo"

    assert_text "Deriva tipo was successfully created"
    click_on "Back"
  end

  test "updating a Deriva tipo" do
    visit deriva_tipos_url
    click_on "Edit", match: :first

    fill_in "Tipo", with: @deriva_tipo.tipo
    click_on "Update Deriva tipo"

    assert_text "Deriva tipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Deriva tipo" do
    visit deriva_tipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deriva tipo was successfully destroyed"
  end
end
