class EntrevistasController < ApplicationController
  before_action :set_entrevista, only: [:show, :edit, :update, :destroy]
  before_action :require_user

  # GET /entrevistas
  # GET /entrevistas.json
  
  def index
    @entrevistas = Entrevista.all
  end

  # GET /entrevistas/1
  # GET /entrevistas/1.json
  def show
  end

  # GET /entrevistas/new
  def new
    @candidato = Candidato.find(params[:candidato_id])
    @entrevista = Entrevista.new
  end
  
  def criteria_selection
  end
  
  def aprovar
    @entrevistas_id = params[:entrevistas_id]
    @entrevistas = []
    Entrevista.all.each do |entrevista|
      entrevista.update(aprovado: false)
    end
    @entrevistas_id.each do |entrevista_id|
      @entrevista = Entrevista.find(entrevista_id)
      @entrevista.update(aprovado: true)
    end
    
    respond_to do |format|
      format.html { redirect_to entrevistas_url, notice: 'Status dos candidatos selecionados foi mudada para aprovado.' }
      format.json { head :no_content }
    end
    
  end
  
  def criteria_filter
    @columns = Entrevista.column_names
    @iptu = params[:iptu]
    @rlpc_max = params[:rlpc_max]
    @rlpc_min = params[:rlpc_min]
    @rbpc_max = params[:rbpc_max]
    @rbpc_min = params[:rbpc_min]
    @veiculos = params[:veiculos]
    @entrevistas = Entrevista.where("iptu < ? AND rlpc > ? AND rlpc < ? AND rbpc > ? AND rbpc < ? AND veiculos < ?", @iptu, @rlpc_min, @rlpc_max, @rbpc_min, @rbpc_max, @veiculos)
    @entrevistas_id = []
    @entrevistas.all.each do |entrevista|
      @entrevistas_id += [entrevista.id]
    end
    render :index3
  end
  
  def selection
    @atributos = Entrevista.column_names
  end
  def filter
    @columns = params[:exibir]
    @entrevistas = Entrevista.select(params[:exibir])
    render :index2
  end

  # GET /entrevistas/1/edit
  def edit
    @candidato = @pesquisa.candidato
  end

  # POST /entrevistas
  # POST /entrevistas.json
  def create
    @entrevista = Entrevista.new(entrevista_params)
    @candidato = Candidato.find(entrevista_params[:candidato_id])
    @entrevista.candidato = @candidato 
    respond_to do |format|
      if @entrevista.save
        format.html { redirect_to @entrevista, notice: 'Entrevista was successfully created.' }
        format.json { render :show, status: :created, location: @entrevista }
      else
        format.html { render :new }
        format.json { render json: @entrevista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entrevistas/1
  # PATCH/PUT /entrevistas/1.json
  def update
    @candidato = @entrevista.candidato
    respond_to do |format|
      if @entrevista.update(entrevista_params)
        format.html { redirect_to @entrevista, notice: 'Entrevista was successfully updated.' }
        format.json { render :show, status: :ok, location: @entrevista }
      else
        format.html { render :edit }
        format.json { render json: @entrevista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrevistas/1
  # DELETE /entrevistas/1.json
  def destroy
    @entrevista.destroy
    respond_to do |format|
      format.html { redirect_to entrevistas_url, notice: 'Entrevista was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrevista
      @entrevista = Entrevista.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrevista_params
      params.require(:entrevista).permit(:candidato_id, :entregou_documentos, :historico_escolar, :numero_de_pessoas, :iptu, :veiculos, :holerites_mes1, :holerites_mes2, :holerites_mes3, :aposentadorias, :auxilios, :renda_bruta, :rbpc, :agua_mes1, :agua_mes2, :agua_mes3, :luz_mes1, :luz_mes2, :luz_mes3, :net_TV_mes1, :net_TV_mes2, :net_TV_mes3, :aluguel, :outros_gastos, :gastos_totais, :renda_liq, :rlpc, :obs, :aprovado)
    end
end
