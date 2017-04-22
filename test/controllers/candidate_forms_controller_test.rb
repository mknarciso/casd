require 'test_helper'

class CandidateFormsControllerTest < ActionController::TestCase
  setup do
    @candidate_form = candidate_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidate_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate_form" do
    assert_difference('CandidateForm.count') do
      post :create, candidate_form: { automovel: @candidate_form.automovel, bathrooms: @candidate_form.bathrooms, city: @candidate_form.city, computers: @candidate_form.computers, employees: @candidate_form.employees, familyIncomeParticipation: @candidate_form.familyIncomeParticipation, fridge: @candidate_form.fridge, hasStudiedCASD: @candidate_form.hasStudiedCASD, houseType: @candidate_form.houseType, householderInstructionLevel: @candidate_form.householderInstructionLevel, howDoYouKnowCASD: @candidate_form.howDoYouKnowCASD, individualMonthlyIncome: @candidate_form.individualMonthlyIncome, isHighSchoolStudent: @candidate_form.isHighSchoolStudent, radio: @candidate_form.radio, relativeInCASD: @candidate_form.relativeInCASD, television: @candidate_form.television, transport: @candidate_form.transport, washingMachines: @candidate_form.washingMachines, workType: @candidate_form.workType }
    end

    assert_redirected_to candidate_form_path(assigns(:candidate_form))
  end

  test "should show candidate_form" do
    get :show, id: @candidate_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate_form
    assert_response :success
  end

  test "should update candidate_form" do
    patch :update, id: @candidate_form, candidate_form: { automovel: @candidate_form.automovel, bathrooms: @candidate_form.bathrooms, city: @candidate_form.city, computers: @candidate_form.computers, employees: @candidate_form.employees, familyIncomeParticipation: @candidate_form.familyIncomeParticipation, fridge: @candidate_form.fridge, hasStudiedCASD: @candidate_form.hasStudiedCASD, houseType: @candidate_form.houseType, householderInstructionLevel: @candidate_form.householderInstructionLevel, howDoYouKnowCASD: @candidate_form.howDoYouKnowCASD, individualMonthlyIncome: @candidate_form.individualMonthlyIncome, isHighSchoolStudent: @candidate_form.isHighSchoolStudent, radio: @candidate_form.radio, relativeInCASD: @candidate_form.relativeInCASD, television: @candidate_form.television, transport: @candidate_form.transport, washingMachines: @candidate_form.washingMachines, workType: @candidate_form.workType }
    assert_redirected_to candidate_form_path(assigns(:candidate_form))
  end

  test "should destroy candidate_form" do
    assert_difference('CandidateForm.count', -1) do
      delete :destroy, id: @candidate_form
    end

    assert_redirected_to candidate_forms_path
  end
end
