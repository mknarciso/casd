require 'test_helper'

class PesquisasControllerTest < ActionController::TestCase
  setup do
    @pesquisa = pesquisas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pesquisas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pesquisa" do
    assert_difference('Pesquisa.count') do
      post :create, pesquisa: { automovel: @pesquisa.automovel, bathrooms: @pesquisa.bathrooms, city: @pesquisa.city, computers: @pesquisa.computers, employees: @pesquisa.employees, familyIncomeParticipation: @pesquisa.familyIncomeParticipation, fridge: @pesquisa.fridge, hasStudiedCASD: @pesquisa.hasStudiedCASD, houseType: @pesquisa.houseType, householderInstructionLevel: @pesquisa.householderInstructionLevel, howDoYouKnowCASD: @pesquisa.howDoYouKnowCASD, individualMonthlyIncome: @pesquisa.individualMonthlyIncome, isHighSchoolStudent: @pesquisa.isHighSchoolStudent, radio: @pesquisa.radio, relativeInCASD: @pesquisa.relativeInCASD, television: @pesquisa.television, transport: @pesquisa.transport, washingMachines: @pesquisa.washingMachines, workType: @pesquisa.workType }
    end

    assert_redirected_to pesquisa_path(assigns(:pesquisa))
  end

  test "should show pesquisa" do
    get :show, id: @pesquisa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pesquisa
    assert_response :success
  end

  test "should update pesquisa" do
    patch :update, id: @pesquisa, pesquisa: { automovel: @pesquisa.automovel, bathrooms: @pesquisa.bathrooms, city: @pesquisa.city, computers: @pesquisa.computers, employees: @pesquisa.employees, familyIncomeParticipation: @pesquisa.familyIncomeParticipation, fridge: @pesquisa.fridge, hasStudiedCASD: @pesquisa.hasStudiedCASD, houseType: @pesquisa.houseType, householderInstructionLevel: @pesquisa.householderInstructionLevel, howDoYouKnowCASD: @pesquisa.howDoYouKnowCASD, individualMonthlyIncome: @pesquisa.individualMonthlyIncome, isHighSchoolStudent: @pesquisa.isHighSchoolStudent, radio: @pesquisa.radio, relativeInCASD: @pesquisa.relativeInCASD, television: @pesquisa.television, transport: @pesquisa.transport, washingMachines: @pesquisa.washingMachines, workType: @pesquisa.workType }
    assert_redirected_to pesquisa_path(assigns(:pesquisa))
  end

  test "should destroy pesquisa" do
    assert_difference('Pesquisa.count', -1) do
      delete :destroy, id: @pesquisa
    end

    assert_redirected_to pesquisas_path
  end
end
