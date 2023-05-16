class Aplicacion::TablasController < ApplicationController
  before_action :set_tabla, only: %i[ show edit update destroy ]

  # GET /tablas or /tablas.json
  def index
    init_tabla('app_nominas', AppNomina.where(owner_class: nil).order(:app_nomina), true)
    add_tabla('app_administradores', AppAdministrador.where(owner_class: nil).order(:app_administrador), false)
  end

  # GET /tablas/1 or /tablas/1.json
  def show
  end

  # GET /tablas/new
  def new
    @objeto = Tabla.new
  end

  # GET /tablas/1/edit
  def edit
  end

  # POST /tablas or /tablas.json
  def create
    @objeto = Tabla.new(tabla_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to tabla_url(@objeto), notice: "Tabla was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tablas/1 or /tablas/1.json
  def update
    respond_to do |format|
      if @objeto.update(tabla_params)
        format.html { redirect_to tabla_url(@objeto), notice: "Tabla was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tablas/1 or /tablas/1.json
  def destroy
    @objeto.destroy

    respond_to do |format|
      format.html { redirect_to tablas_url, notice: "Tabla was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabla
      @objeto = Tabla.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tabla_params
      params.fetch(:tabla, {})
    end
end
