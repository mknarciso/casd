class CandidateFormsController < ApplicationController
  before_action :set_candidate_form, only: [:show, :edit, :update, :destroy]

  # GET /candidate_forms
  # GET /candidate_forms.json
  def index
    @candidate_forms = CandidateForm.all
  end

  # GET /candidate_forms/1
  # GET /candidate_forms/1.json
  def show
  end

  # GET /candidate_forms/new
  def new
    @candidate_form = CandidateForm.new
  end

  # GET /candidate_forms/1/edit
  def edit
  end

  # POST /candidate_forms
  # POST /candidate_forms.json
  def create
    @candidate_form = CandidateForm.new(candidate_form_params)

    respond_to do |format|
      if @candidate_form.save
        format.html { redirect_to @candidate_form, notice: 'Candidate form was successfully created.' }
        format.json { render :show, status: :created, location: @candidate_form }
      else
        format.html { render :new }
        format.json { render json: @candidate_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidate_forms/1
  # PATCH/PUT /candidate_forms/1.json
  def update
    respond_to do |format|
      if @candidate_form.update(candidate_form_params)
        format.html { redirect_to @candidate_form, notice: 'Candidate form was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidate_form }
      else
        format.html { render :edit }
        format.json { render json: @candidate_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidate_forms/1
  # DELETE /candidate_forms/1.json
  def destroy
    @candidate_form.destroy
    respond_to do |format|
      format.html { redirect_to candidate_forms_url, notice: 'Candidate form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate_form
      @candidate_form = CandidateForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_form_params
      params.require(:candidate_form).permit(:automovel, :television, :computers, :washingMachines, :fridge, :radio, :bathrooms, :employees, :householderInstructionLevel, :city, :houseType, :transport, :familyIncomeParticipation, :workType, :individualMonthlyIncome, :howDoYouKnowCASD, :isHighSchoolStudent, :hasStudiedCASD, :relativeInCASD)
    end
end