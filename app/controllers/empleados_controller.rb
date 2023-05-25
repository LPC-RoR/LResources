class EmpleadosController < ApplicationController
  before_action :set_empleado, only: %i[ show edit update destroy set_jefatura ]

  # GET /empleados or /empleados.json
  def index
    @coleccion = Empleado.all
  end

  # GET /empleados/1 or /empleados/1.json
  def show
  
    init_tab( { tab: ['Estructura', 'Documentos'] }, true )
  
  end

  # GET /empleados/new
  def new
    cargo = params[:class_name].constantize.find(params[:objeto_id])
    @objeto = cargo.empleados.new
  end

  # GET /empleados/1/edit
  def edit
  end

  # POST /empleados or /empleados.json
  def create
    @objeto = Empleado.new(empleado_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Empleado was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
        format.turbo_stream { render "0p/form/form_update", status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empleados/1 or /empleados/1.json
  def update
    respond_to do |format|
      if @objeto.update(empleado_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Empleado was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_jefatura
    @objeto.jefatura = (@objeto.jefatura ? false : true)
    @objeto.save

    redirect_to @objeto.cargo.area.empresa_origen
  end

  # DELETE /empleados/1 or /empleados/1.json
  def destroy
    set_redireccion
    @objeto.destroy

    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Empleado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleado
      @objeto = Empleado.find(params[:id])
    end

    def set_redireccion
      @redireccion = @objeto.cargo.area.empresa_origen
    end

    # Only allow a list of trusted parameters through.
    def empleado_params
      params.require(:empleado).permit(:nombres, :apellido_paterno, :apellido_materno, :rut, :direccion, :telefono, :sexo, :cargo_id, :jefatura)
    end
end
