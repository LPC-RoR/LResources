class Autenticacion::AppNominasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_app_nomina, only: %i[ show edit update destroy ]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]

  include Sidebar

  # GET /app_nominas or /app_nominas.json
  def index
  end

  # GET /app_nominas/1 or /app_nominas/1.json
  def show
#    init_tabla('tar_bases', @objeto.tar_bases, false)
#    add_tabla('tar_variables', @objeto.tar_variables, false)

    carga_sidebar('Administración', 'Nómina')
    @modelos_disponibles = StModelo.where(st_modelo: (StModelo.all.map {|st_modelo| st_modelo.st_modelo} - @objeto.st_perfil_modelos.map {|st_perfil_modelo| st_perfil_modelo.st_perfil_modelo})).order(:st_modelo)
  end

  # GET /app_nominas/new
  def new
    carga_sidebar('Administración', 'Nómina')

    app_empresa = params[:app_empresa_id].blank? ? nil : AppEmpresa.find(params[:app_empresa_id])
    owner_class = app_empresa.blank? ? nil : 'AppEmpresa'
    owner_id = app_empresa.blank? ? nil : app_empresa.id
    @objeto = AppNomina.new(owner_class: owner_class, owner_id: owner_id )
  end

  # GET /app_nominas/1/edit
  def edit
    carga_sidebar('Administración', 'Nómina')
  end

  # POST /app_nominas or /app_nominas.json
  def create
    @objeto = AppNomina.new(app_nomina_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Nómina fue exitósamente creada." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
        format.turbo_stream { render "0p/form/form_update", status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_nominas/1 or /app_nominas/1.json
  def update
    respond_to do |format|
      if @objeto.update(app_nomina_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Nómina fue exitósamente actualizada." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_nominas/1 or /app_nominas/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Nómina fue exitósamente eliminada." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_nomina
      @objeto = AppNomina.find(params[:id])
    end

    def set_redireccion
      @redireccion = @objeto.owner_class.blank? ? "/app_recursos/administracion?id=#{get_elemento_id('app_nominas', 'Nómina')}" : "/app_empresas/#{@objeto.empresa.id}?html_options[tab]=Autenticacion"
    end

    # Only allow a list of trusted parameters through.
    def app_nomina_params
      params.require(:app_nomina).permit(:app_nomina, :email, :owner_class, :owner_id)
    end
end
