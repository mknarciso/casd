require 'test_helper'

class EntrevistasControllerTest < ActionController::TestCase
  setup do
    @entrevista = entrevistas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrevistas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrevista" do
    assert_difference('Entrevista.count') do
      post :create, entrevista: { agua_mes1: @entrevista.agua_mes1, agua_mes2: @entrevista.agua_mes2, agua_mes3: @entrevista.agua_mes3, aluguel: @entrevista.aluguel, aposentadorias: @entrevista.aposentadorias, aprovado: @entrevista.aprovado, auxilios: @entrevista.auxilios, entregou_documentos: @entrevista.entregou_documentos, gastos_totais: @entrevista.gastos_totais, historico_escolar: @entrevista.historico_escolar, holerites_mes1: @entrevista.holerites_mes1, holerites_mes2: @entrevista.holerites_mes2, holerites_mes3: @entrevista.holerites_mes3, iptu: @entrevista.iptu, luz_mes1: @entrevista.luz_mes1, luz_mes2: @entrevista.luz_mes2, luz_mes3: @entrevista.luz_mes3, net_TV_mes1: @entrevista.net_TV_mes1, net_TV_mes2: @entrevista.net_TV_mes2, net_TV_mes3: @entrevista.net_TV_mes3, numero_de_pessoas: @entrevista.numero_de_pessoas, obs: @entrevista.obs, outros_gastos: @entrevista.outros_gastos, rbpc: @entrevista.rbpc, renda_bruta: @entrevista.renda_bruta, renda_liq: @entrevista.renda_liq, rlpc: @entrevista.rlpc, veiculos: @entrevista.veiculos }
    end

    assert_redirected_to entrevista_path(assigns(:entrevista))
  end

  test "should show entrevista" do
    get :show, id: @entrevista
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrevista
    assert_response :success
  end

  test "should update entrevista" do
    patch :update, id: @entrevista, entrevista: { agua_mes1: @entrevista.agua_mes1, agua_mes2: @entrevista.agua_mes2, agua_mes3: @entrevista.agua_mes3, aluguel: @entrevista.aluguel, aposentadorias: @entrevista.aposentadorias, aprovado: @entrevista.aprovado, auxilios: @entrevista.auxilios, entregou_documentos: @entrevista.entregou_documentos, gastos_totais: @entrevista.gastos_totais, historico_escolar: @entrevista.historico_escolar, holerites_mes1: @entrevista.holerites_mes1, holerites_mes2: @entrevista.holerites_mes2, holerites_mes3: @entrevista.holerites_mes3, iptu: @entrevista.iptu, luz_mes1: @entrevista.luz_mes1, luz_mes2: @entrevista.luz_mes2, luz_mes3: @entrevista.luz_mes3, net_TV_mes1: @entrevista.net_TV_mes1, net_TV_mes2: @entrevista.net_TV_mes2, net_TV_mes3: @entrevista.net_TV_mes3, numero_de_pessoas: @entrevista.numero_de_pessoas, obs: @entrevista.obs, outros_gastos: @entrevista.outros_gastos, rbpc: @entrevista.rbpc, renda_bruta: @entrevista.renda_bruta, renda_liq: @entrevista.renda_liq, rlpc: @entrevista.rlpc, veiculos: @entrevista.veiculos }
    assert_redirected_to entrevista_path(assigns(:entrevista))
  end

  test "should destroy entrevista" do
    assert_difference('Entrevista.count', -1) do
      delete :destroy, id: @entrevista
    end

    assert_redirected_to entrevistas_path
  end
end
