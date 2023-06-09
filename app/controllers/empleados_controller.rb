class EmpleadosController < ApplicationController
  before_action :set_empleado, only: %i[ show edit update destroy set_jefatura crea_documento ]

  # GET /empleados or /empleados.json
  def index
    @coleccion = Empleado.all
  end

  # GET /empleados/1 or /empleados/1.json
  def show
  
    init_tab( { tab: ['Estructura', 'Documentos'] }, true )

    if @options[:tab] == 'Documentos'
      # Verifica existencia repositorio
      AppRepositorio.create(owner_class: @objeto.class.name, owner_id: @objeto.id, app_repositorio: @objeto.nombre) if @objeto.repositorio.blank?
  
      init_tabla('app_directorios', @objeto.repositorio.directorios.order(:app_directorio), false)
      add_tabla('app_documentos', @objeto.repositorio.documentos.order(:app_documento), false) 

      # Control de documentos
      @documentos_empresa = @objeto.cargo.area.empresa_origen.control_documentos
      @documentos_cargo = @objeto.cargo.control_documentos
    end

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

  def crea_documento
    control = ControlDocumento.find(params[:control_id])
    owner = @objeto.repositorio
    ruta_array = control.control_documento.split('::')
    ruta_array.each_with_index do |val, index|
      if index == ruta_array.length-1
        # archivo
        unless owner.existe_documento?(val)
          AppDocumento.create(owner_class: owner.class.name, owner_id: owner.id, app_documento: val, existencia: control.existencia, vencimiento: control.vencimiento, documento_control: true, referencia: control.control_documento)
        end
      else
        # directorio
        unless owner.existe_directorio?(val)
          AppDirectorio.create(owner_class: owner.class.name, owner_id: owner.id, app_directorio: val, directorio_control: true)
        end
        owner = owner.directorios.find_by(app_directorio: val)
      end
    end

    redirect_to "/empleados/#{@objeto.id}?html_options[tab]=Documentos"
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
