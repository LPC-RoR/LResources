class LdTipoParrafosController < ApplicationController
  before_action :set_ld_tipo_parrafo, only: %i[ show edit update destroy ]

  # GET /ld_tipo_parrafos or /ld_tipo_parrafos.json
  def index
    @coleccion = LdTipoParrafo.all
  end

  # GET /ld_tipo_parrafos/1 or /ld_tipo_parrafos/1.json
  def show
  end

  # GET /ld_tipo_parrafos/new
  def new
    @objeto = LdTipoParrafo.new
  end

  # GET /ld_tipo_parrafos/1/edit
  def edit
  end

  # POST /ld_tipo_parrafos or /ld_tipo_parrafos.json
  def create
    @objeto = LdTipoParrafo.new(ld_tipo_parrafo_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Ld tipo parrafo was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ld_tipo_parrafos/1 or /ld_tipo_parrafos/1.json
  def update
    respond_to do |format|
      if @objeto.update(ld_tipo_parrafo_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Ld tipo parrafo was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ld_tipo_parrafos/1 or /ld_tipo_parrafos/1.json
  def destroy
    set_redireccion
    @objeto.destroy

    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Ld tipo parrafo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ld_tipo_parrafo
      @objeto = LdTipoParrafo.find(params[:id])
    end

    def set_redireccion
      @redireccion = ld_formatos_path
    end

    # Only allow a list of trusted parameters through.
    def ld_tipo_parrafo_params
      params.require(:ld_tipo_parrafo).permit(:ld_tipo_parrafo)
    end
end
