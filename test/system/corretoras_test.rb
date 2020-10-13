require "application_system_test_case"

class CorretorasTest < ApplicationSystemTestCase
  setup do
    @corretora = corretoras(:one)
  end

  test "visiting the index" do
    visit corretoras_url
    assert_selector "h1", text: "Corretoras"
  end

  test "creating a Corretora" do
    visit corretoras_url
    click_on "New Corretora"

    fill_in "Corretagem", with: @corretora.corretagem
    fill_in "Corretagem iss", with: @corretora.corretagem_iss
    fill_in "Corretagem porcentagem", with: @corretora.corretagem_porcentagem
    fill_in "Nome", with: @corretora.nome
    click_on "Create Corretora"

    assert_text "Corretora was successfully created"
    click_on "Back"
  end

  test "updating a Corretora" do
    visit corretoras_url
    click_on "Edit", match: :first

    fill_in "Corretagem", with: @corretora.corretagem
    fill_in "Corretagem iss", with: @corretora.corretagem_iss
    fill_in "Corretagem porcentagem", with: @corretora.corretagem_porcentagem
    fill_in "Nome", with: @corretora.nome
    click_on "Update Corretora"

    assert_text "Corretora was successfully updated"
    click_on "Back"
  end

  test "destroying a Corretora" do
    visit corretoras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corretora was successfully destroyed"
  end
end
