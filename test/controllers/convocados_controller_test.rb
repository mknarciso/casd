require 'test_helper'

class ConvocadosControllerTest < ActionController::TestCase
  setup do
    @convocado = convocados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convocados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convocado" do
    assert_difference('Convocado.count') do
      post :create, convocado: { bairro: @convocado.bairro, celular: @convocado.celular, cep: @convocado.cep, cidade: @convocado.cidade, como_conheceu: @convocado.como_conheceu, cpf: @convocado.cpf, data_inscricao: @convocado.data_inscricao, email: @convocado.email, endereco: @convocado.endereco, escolaridade: @convocado.escolaridade, especiais: @convocado.especiais, ex_aluno: @convocado.ex_aluno, facebook: @convocado.facebook, inscricao: @convocado.inscricao, internet: @convocado.internet, nascimento: @convocado.nascimento, nec_especial: @convocado.nec_especial, nome: @convocado.nome, nome_escola: @convocado.nome_escola, parentesco: @convocado.parentesco, profissao: @convocado.profissao, responsavel: @convocado.responsavel, rg: @convocado.rg, sexo: @convocado.sexo, telefone: @convocado.telefone, tipo_escola: @convocado.tipo_escola, trabalha: @convocado.trabalha, transporte: @convocado.transporte }
    end

    assert_redirected_to convocado_path(assigns(:convocado))
  end

  test "should show convocado" do
    get :show, id: @convocado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convocado
    assert_response :success
  end

  test "should update convocado" do
    patch :update, id: @convocado, convocado: { bairro: @convocado.bairro, celular: @convocado.celular, cep: @convocado.cep, cidade: @convocado.cidade, como_conheceu: @convocado.como_conheceu, cpf: @convocado.cpf, data_inscricao: @convocado.data_inscricao, email: @convocado.email, endereco: @convocado.endereco, escolaridade: @convocado.escolaridade, especiais: @convocado.especiais, ex_aluno: @convocado.ex_aluno, facebook: @convocado.facebook, inscricao: @convocado.inscricao, internet: @convocado.internet, nascimento: @convocado.nascimento, nec_especial: @convocado.nec_especial, nome: @convocado.nome, nome_escola: @convocado.nome_escola, parentesco: @convocado.parentesco, profissao: @convocado.profissao, responsavel: @convocado.responsavel, rg: @convocado.rg, sexo: @convocado.sexo, telefone: @convocado.telefone, tipo_escola: @convocado.tipo_escola, trabalha: @convocado.trabalha, transporte: @convocado.transporte }
    assert_redirected_to convocado_path(assigns(:convocado))
  end

  test "should destroy convocado" do
    assert_difference('Convocado.count', -1) do
      delete :destroy, id: @convocado
    end

    assert_redirected_to convocados_path
  end
end
