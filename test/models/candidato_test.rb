require "test_helper"

class CandidatoTest < ActiveSupport::TestCase
  test "não deve salvar candidato sem nome" do
    candidato = Candidato.new(email: "test@example.com", telefone: "123456789")
    assert_not candidato.save, "Salvou o candidato sem um nome"
  end

  test "não deve salvar candidato sem email" do
    candidato = Candidato.new(nome: "Teste", telefone: "123456789")
    assert_not candidato.save, "Salvou o candidato sem um email"
  end

  test "não deve salvar candidato sem telefone" do
    candidato = Candidato.new(nome: "Teste", email: "test@example.com")
    assert_not candidato.save, "Salvou o candidato sem um telefone"
  end

  test "não deve salvar candidato com email inválido" do
    candidato = Candidato.new(nome: "Teste", email: "email_invalido", telefone: "123456789")
    assert_not candidato.save, "Salvou o candidato com email inválido"
  end

  test "não deve salvar candidato com email duplicado" do
    Candidato.create!(nome: "Teste", email: "test@example.com", telefone: "123456789")
    candidato_duplicado = Candidato.new(nome: "Outro", email: "test@example.com", telefone: "987654321")
    
    assert_not candidato_duplicado.save, "Salvou o candidato com email duplicado"
  end

  test "não deve salvar candidato com telefone menor que 9 dígitos" do
    candidato = Candidato.new(nome: "Teste", email: "test@example.com", telefone: "1234567")
    assert_not candidato.save, "Salvou o candidato com telefone menor que 9 dígitos"
  end

  test "deve salvar candidato válido" do
    candidato = Candidato.new(nome: "Teste", email: "test@example.com", telefone: "123456789")
    assert candidato.save, "Não conseguiu salvar um candidato válido"
  end
end
