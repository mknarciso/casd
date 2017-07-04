class CandidatosController < ApplicationController
  before_action :set_candidato, only: [:show, :edit, :update, :destroy]

  # Incluimos a Lib que vamos criar para podermos chama-la no nosso método
  require './lib/generate_pdf'
  require 'prawn'
  before_action :require_user

  # GET /candidatos
  # GET /candidatos.json
  def index
    @candidatos = Candidato.all
    respond_to do |format|
      format.html
      format.csv { send_data @candidatos.to_csv }
      #format.xls 
    end
  end

  # GET /candidatos/1
  # GET /candidatos/1.json
  def show
    if not @candidato.pesquisa.nil?
      @pesquisa = @candidato.pesquisa
    end
  end

  # GET /candidatos/new
  def new
    @candidato = Candidato.new
  end

  def selection
    @atributos = Candidato.column_names
  end
  
  def filter
    @columns = params[:exibir]
    @candidatos = Candidato.select(params[:exibir])
    render :index2
  end
  # GET /candidatos/1/edit
  def edit
  end

  def addfile
  end

  def import
    Candidato.import(params[:file])
    redirect_to candidatos_path, notice: "CSV importado com sucesso."  
  end

  # POST /candidatos
  # POST /candidatos.json
  def create
    require 'securerandom'
    @candidato = Candidato.new(candidato_params, key: SecureRandom.urlsafe_base64(10))
    respond_to do |format|
      if @candidato.save
        format.html { redirect_to @candidato, notice: 'Candidato was successfully created.' }
        format.json { render :show, status: :created, location: @candidato }
      else
        format.html { render :new }
        format.json { render json: @candidato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidatos/1
  # PATCH/PUT /candidatos/1.json
  def update
    respond_to do |format|
      if @candidato.update(candidato_params)
        format.html { redirect_to @candidato, notice: 'Candidato was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidato }
      else
        format.html { render :edit }
        format.json { render json: @candidato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidatos/1
  # DELETE /candidatos/1.json
  def destroy
    @candidato.destroy
    respond_to do |format|
      format.html { redirect_to candidatos_url, notice: 'Candidato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  # Criamos o método export para chamar a lib que gera o PDF e depois redirecionar o usuário para baixo o PDF
  def pdfexport
    GeneratePdf::candidato(Candidato.all.map {|c| c })
    redirect_to '/candidatos_aprovados.pdf'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidato
      @candidato = Candidato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidato_params
      params.require(:candidato).permit(:candidato_id, :inscricao, :nome, :rg, :cpf, :sexo, :nascimento, :responsavel, :parentesco, :celular, :telefone, :email, :endereco, :bairro, :cep, :cidade, :especiais, :nec_especial, :tipo_escola, :escolaridade, :nome_escola, :trabalha, :profissao, :transporte, :internet, :ex_aluno, :como_conheceu, :data_inscricao, :facebook)
    end
end
