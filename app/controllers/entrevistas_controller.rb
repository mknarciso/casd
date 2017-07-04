class EntrevistasController < ApplicationController
  before_action :set_entrevista, only: [:show, :edit, :update, :destroy]

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
    @entrevista = Entrevista.new
  end
  
  def criteria_selection
    @criterios = ["Rbpc", "Iptu", "Rlpc", "Veiculos" ]
  end
  def criteria_filter
    @columns = params[:exibir]
    @entrevistas = Entrevista.select(params[:exibir])
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
  end

  # POST /entrevistas
  # POST /entrevistas.json
  def create
    @entrevista = Entrevista.new(entrevista_params)

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
      params.require(:entrevista).permit(:entregou_documentos, :historico_escolar, :numero_de_pessoas, :iptu, :veiculos, :holerites_mes1, :holerites_mes2, :holerites_mes3, :aposentadorias, :auxilios, :renda_bruta, :rbpc, :agua_mes1, :agua_mes2, :agua_mes3, :luz_mes1, :luz_mes2, :luz_mes3, :net_TV_mes1, :net_TV_mes2, :net_TV_mes3, :aluguel, :outros_gastos, :gastos_totais, :renda_liq, :rlpc, :obs, :aprovado)
    end
end
