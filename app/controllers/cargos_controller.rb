class CargosController < ApplicationController
  before_action :set_cargo, only: %i[ show edit update destroy ]

  # GET /cargos or /cargos.json
  def index
    @coleccion = Cargo.all
  end

  # GET /cargos/1 or /cargos/1.json
  def show
    init_tab( { tab: ['Estructura', 'Documentos'] }, true )

    if @options[:tab] == 'Estructura'
    elsif @options[:tab] == 'Documentos'
      init_tabla('control_documentos', @objeto.control_documentos.order(:control_documento), false)
    end
  end

  # GET /cargos/new
  def new
    area = Area.find(params[:objeto_id])
    @objeto = area.cargos.new
  end

  # GET /cargos/1/edit
  def edit
  end

  # POST /cargos or /cargos.json
  def create
    @objeto = Cargo.new(cargo_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Cargo was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
        format.turbo_stream { render "0p/form/form_update", status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cargos/1 or /cargos/1.json
  def update
    respond_to do |format|
      if @objeto.update(cargo_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Cargo was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargos/1 or /cargos/1.json
  def destroy
    set_redireccion
    @objeto.destroy

    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Cargo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cargo
      @objeto = Cargo.find(params[:id])
    end

    def set_redireccion
      @redireccion = @objeto.area.empresa_origen
    end

    # Only allow a list of trusted parameters through.
    def cargo_params
      params.require(:cargo).permit(:cargo, :dotacion, :area_id)
    end
end
