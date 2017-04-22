require 'test_helper'

class CandidatosControllerTest < ActionController::TestCase
  setup do
    @candidato = candidatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato" do
    assert_difference('Candidato.count') do
      post :create, candidato: { bairro: @candidato.bairro, celular: @candidato.celular, cep: @candidato.cep, cidade: @candidato.cidade, como_conheceu: @candidato.como_conheceu, cpf: @candidato.cpf, data_inscricao: @candidato.data_inscricao, email: @candidato.email, endereco: @candidato.endereco, escolaridade: @candidato.escolaridade, especiais: @candidato.especiais, ex_aluno: @candidato.ex_aluno, facebook: @candidato.facebook, inscricao: @candidato.inscricao, internet: @candidato.internet, nascimento: @candidato.nascimento, nec_especial: @candidato.nec_especial, nome: @candidato.nome, nome_escola: @candidato.nome_escola, parentesco: @candidato.parentesco, profissao: @candidato.profissao, responsavel: @candidato.responsavel, rg: @candidato.rg, sexo: @candidato.sexo, telefone: @candidato.telefone, tipo_escola: @candidato.tipo_escola, trabalha: @candidato.trabalha, transporte: @candidato.transporte }
    end

    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should show candidato" do
    get :show, id: @candidato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato
    assert_response :success
  end

  test "should update candidato" do
    patch :update, id: @candidato, candidato: { bairro: @candidato.bairro, celular: @candidato.celular, cep: @candidato.cep, cidade: @candidato.cidade, como_conheceu: @candidato.como_conheceu, cpf: @candidato.cpf, data_inscricao: @candidato.data_inscricao, email: @candidato.email, endereco: @candidato.endereco, escolaridade: @candidato.escolaridade, especiais: @candidato.especiais, ex_aluno: @candidato.ex_aluno, facebook: @candidato.facebook, inscricao: @candidato.inscricao, internet: @candidato.internet, nascimento: @candidato.nascimento, nec_especial: @candidato.nec_especial, nome: @candidato.nome, nome_escola: @candidato.nome_escola, parentesco: @candidato.parentesco, profissao: @candidato.profissao, responsavel: @candidato.responsavel, rg: @candidato.rg, sexo: @candidato.sexo, telefone: @candidato.telefone, tipo_escola: @candidato.tipo_escola, trabalha: @candidato.trabalha, transporte: @candidato.transporte }
    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should destroy candidato" do
    assert_difference('Candidato.count', -1) do
      delete :destroy, id: @candidato
    end

    assert_redirected_to candidatos_path
  end
end
