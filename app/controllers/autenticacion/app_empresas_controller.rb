class Autenticacion::AppEmpresasController < ApplicationController
  before_action :set_app_empresa, only: %i[ show edit update destroy ]

  include Sidebar

  # GET /app_empresas or /app_empresas.json
  def index
    init_tabla('app_empresas', AppEmpresa.all.order(:app_empresa), false)
  end

  # GET /app_empresas/1 or /app_empresas/1.json
  def show
    carga_sidebar('Administración', 'Nómina')
    init_tabla('app_nominas', @objeto.empleados.order(:app_nomina), true)
    add_tabla('app_administradores', @objeto.administradores.order(:app_administrador), false)
  end

  # GET /app_empresas/new
  def new
    @objeto = AppEmpresa.new
  end

  # GET /app_empresas/1/edit
  def edit
  end

  # POST /app_empresas or /app_empresas.json
  def create
    @objeto = AppEmpresa.new(app_empresa_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Empresa fue exitósamente creada." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_empresas/1 or /app_empresas/1.json
  def update
    respond_to do |format|
      if @objeto.update(app_empresa_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Empresa fue exitósamente actualizada." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_empresas/1 or /app_empresas/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Empresa fue exitósmente eliminada." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_empresa
      @objeto = AppEmpresa.find(params[:id])
    end

    def set_redireccion
      @redireccion = app_empresas_path
    end

    # Only allow a list of trusted parameters through.
    def app_empresa_params
      params.require(:app_empresa).permit(:app_empresa, :rut)
    end
end
