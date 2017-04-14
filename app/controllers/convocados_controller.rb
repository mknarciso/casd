class ConvocadosController < ApplicationController
  before_action :set_convocado, only: [:show, :edit, :update, :destroy]

  # GET /convocados
  # GET /convocados.json
  def index
    @convocados = Convocado.all
  end

  # GET /convocados/1
  # GET /convocados/1.json
  def show
  end

  # GET /convocados/new
  def new
    @convocado = Convocado.new
  end

  # GET /convocados/1/edit
  def edit
  end

  def addfile
  end

  def import
    Convocado.import(params[:file])
    redirect_to convocados_path, notice: "CSV importado com sucesso."  
  end

  # POST /convocados
  # POST /convocados.json
  def create
    @convocado = Convocado.new(convocado_params)

    respond_to do |format|
      if @convocado.save
        format.html { redirect_to @convocado, notice: 'Convocado was successfully created.' }
        format.json { render :show, status: :created, location: @convocado }
      else
        format.html { render :new }
        format.json { render json: @convocado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convocados/1
  # PATCH/PUT /convocados/1.json
  def update
    respond_to do |format|
      if @convocado.update(convocado_params)
        format.html { redirect_to @convocado, notice: 'Convocado was successfully updated.' }
        format.json { render :show, status: :ok, location: @convocado }
      else
        format.html { render :edit }
        format.json { render json: @convocado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convocados/1
  # DELETE /convocados/1.json
  def destroy
    @convocado.destroy
    respond_to do |format|
      format.html { redirect_to convocados_url, notice: 'Convocado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convocado
      @convocado = Convocado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convocado_params
      params.require(:convocado).permit(:inscricao, :nome, :rg, :cpf, :sexo, :nascimento, :responsavel, :parentesco, :celular, :telefone, :email, :endereco, :bairro, :cep, :cidade, :especiais, :nec_especial, :tipo_escola, :escolaridade, :nome_escola, :trabalha, :profissao, :transporte, :internet, :ex_aluno, :como_conheceu, :data_inscricao, :facebook)
    end
end
