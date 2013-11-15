class ImpuestosPorPeriodosController < ApplicationController
	before_action :set_impuestos_por_periodo, only: [:show, :edit, :update, :destroy]

  # GET /impuestos
  # GET /impuestos.json
  def index
    #periodo = Periodos.find(params)
    periodo = Periodo.find(1)
    @impuestos_por_periodo = Impuesto.all
    #@impuestos_por_periodo = Impuesto.periodo
  end

  # GET /impuestos/1
  # GET /impuestos/1.json
  def show
  end

  # GET /impuestos/new
  def new
  	#@impuesto_por_periodo = ImpuestosPorPeriodo.new
    #@impuesto = Impuesto.find(:id)
  end

  # GET /impuestos/1/edit
  def edit
  end

  # POST /impuestos
  # POST /impuestos.json
  def create
    @impuesto = Impuesto.new(impuesto_params)

    respond_to do |format|
      if @impuesto.save
        format.html { redirect_to @impuesto, notice: 'Tax was successfully created.' }
        format.json { render action: 'show', status: :created, location: @impuesto }
      else
        format.html { render action: 'new' }
        format.json { render json: @impuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impuestos/1
  # PATCH/PUT /impuestos/1.json
  def update
    respond_to do |format|
      if @impuesto.update(impuesto_params)
        format.html { redirect_to @impuesto, notice: 'Tax was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @impuesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impuestos/1
  # DELETE /impuestos/1.json
  def destroy
    @impuesto.destroy
    respond_to do |format|
      format.html { redirect_to impuestos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impuestos_por_periodo
      @impuesto = Impuesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def impuesto_params
    #  params.require(:impuesto).permit(:impuesto, :importe, :cm, :default_vencimiento0, :default_vencimiento1, :default_vencimiento2, :default_vencimiento3, :default_vencimiento4, :default_vencimiento5, :default_vencimiento6, :default_vencimiento7, :default_vencimiento8, :default_vencimiento9)
    #end
end
