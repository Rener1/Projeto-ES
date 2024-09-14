require "application_system_test_case"

class CandidatosTest < ApplicationSystemTestCase
  setup do
    @candidato = candidatos(:one)
  end

  test "visiting the index" do
    visit candidatos_url
    assert_selector "h1", text: "Candidatos"
  end

  test "should create candidato" do
    visit candidatos_url
    click_on "New candidato"

    fill_in "Email", with: @candidato.email
    fill_in "Nome", with: @candidato.nome
    fill_in "Telefone", with: @candidato.telefone
    click_on "Create Candidato"

    assert_text "Candidato was successfully created"
    click_on "Back"
  end

  test "should update Candidato" do
    visit candidato_url(@candidato)
    click_on "Edit this candidato", match: :first

    fill_in "Email", with: @candidato.email
    fill_in "Nome", with: @candidato.nome
    fill_in "Telefone", with: @candidato.telefone
    click_on "Update Candidato"

    assert_text "Candidato was successfully updated"
    click_on "Back"
  end

  test "should destroy Candidato" do
    visit candidato_url(@candidato)
    click_on "Destroy this candidato", match: :first

    assert_text "Candidato was successfully destroyed"
  end
end
