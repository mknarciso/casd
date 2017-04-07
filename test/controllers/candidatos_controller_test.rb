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
      post :create, candidato: { born: @candidato.born, name: @candidato.name }
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
    patch :update, id: @candidato, candidato: { born: @candidato.born, name: @candidato.name }
    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should destroy candidato" do
    assert_difference('Candidato.count', -1) do
      delete :destroy, id: @candidato
    end

    assert_redirected_to candidatos_path
  end
end
