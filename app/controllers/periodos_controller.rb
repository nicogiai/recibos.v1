class PeriodosController < ApplicationController
  before_action :set_periodo, only: [:show, :edit, :update, :destroy]

  # GET /periodos
  # GET /periodos.json
  def index
    @periodos = Periodo.all
  end

  # GET /periodos/1
  # GET /periodos/1.json
  def show
  end

  # GET /periodos/new
  def new
    @periodo = Periodo.new
  end

  # GET /periodos/1/edit
  def edit
  end

  # POST /periodos
  # POST /periodos.json
  def create
    @periodo = Periodo.new(periodo_params)

    respond_to do |format|
      if @periodo.save
        
        #Creo la relacion con impuestos_por_peridos
        
        #Impuesto.all.each do |impuesto|
        #  impuestos_por_periodo = ImpuestosPorPeriodo.new
          
        #  impuestos_por_periodo.periodo = @periodo
        #  impuestos_por_periodo.impuesto = impuesto

        #  impuestos_por_periodo.importe = impuesto.importe

          #TODO: tomar DD de los vencimientos de la tabla impuestos y ponerle el MM/YYYY del periodo
        #  impuestos_por_periodo.default_vencimiento0 = impuesto.default_vencimiento0
        #  impuestos_por_periodo.default_vencimiento1 = impuesto.default_vencimiento1
        #  impuestos_por_periodo.default_vencimiento2 = impuesto.default_vencimiento2
        #  impuestos_por_periodo.default_vencimiento3 = impuesto.default_vencimiento3
        #  impuestos_por_periodo.default_vencimiento4 = impuesto.default_vencimiento4
        #  impuestos_por_periodo.default_vencimiento5 = impuesto.default_vencimiento5
        #  impuestos_por_periodo.default_vencimiento6 = impuesto.default_vencimiento6
        #  impuestos_por_periodo.default_vencimiento7 = impuesto.default_vencimiento7
        #  impuestos_por_periodo.default_vencimiento8 = impuesto.default_vencimiento8
        #  impuestos_por_periodo.default_vencimiento9 = impuesto.default_vencimiento9
          
        #  impuestos_por_periodo.save!

          #TODO: Generar tambien historial_de_impuestos ???

        #end        

        format.html { redirect_to @periodo, notice: 'Period was successfully created.' }
        format.json { render action: 'show', status: :created, location: @periodo }
      else
        format.html { render action: 'new' }
        format.json { render json: @periodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periodos/1
  # PATCH/PUT /periodos/1.json
  def update
    respond_to do |format|
      if @periodo.update(periodo_params)
        format.html { redirect_to @periodo, notice: 'Period was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @periodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periods/1
  # DELETE /periods/1.json
  def destroy
    @periodo.destroy
    respond_to do |format|
      format.html { redirect_to periodos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periodo
      @periodo = Periodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def periodo_params
      params.require(:periodo).permit(:fecha_inicio, :fecha_fin, :descripcion)
    end	
end
