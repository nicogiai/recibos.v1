class ClientesController < ApplicationController
	before_action :set_cliente, only: [:show, :edit, :update, :destroy]

	# GET /clientes
	def index
		@clientes = Cliente.all
	end

	# GET /clientes/1
	def show
	end

	# GET /clientes/new
	def new
		@cliente = Cliente.new
	end

	# GET /clientes/1/edit
	def edit
	end	

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Client was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cliente }
      else
        format.html { render action: 'new' }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:cliente, :cuit, :telefono1, :telefono2, :telefono3, :email1, :email2, :fecha_inicio, :clave_fiscal, :clave_muni, :domicilio1, :domicilio2, :notas, :iibb_cm, :cant_adherentes)
    end	
end
