class LdParrafosController < ApplicationController
  before_action :set_ld_parrafo, only: %i[ show edit update destroy ]

  # GET /ld_parrafos or /ld_parrafos.json
  def index
    @coleccion = LdParrafo.all
  end

  # GET /ld_parrafos/1 or /ld_parrafos/1.json
  def show
  end

  # GET /ld_parrafos/new
  def new
    @objeto = LdParrafo.new(ld_tipo_parrafo_id: params[:objeto_id])
  end

  # GET /ld_parrafos/1/edit
  def edit
  end

  # POST /ld_parrafos or /ld_parrafos.json
  def create
    @objeto = LdParrafo.new(ld_parrafo_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Párrafo fue exitóasamente creado." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ld_parrafos/1 or /ld_parrafos/1.json
  def update
    respond_to do |format|
      if @objeto.update(ld_parrafo_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Párrafo fue exitósamente actualizado." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ld_parrafos/1 or /ld_parrafos/1.json
  def destroy
    set_redireccion
    @objeto.destroy

    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Párrafo fue exitósamente eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ld_parrafo
      @objeto = LdParrafo.find(params[:id])
    end

    def set_redireccion
      @redireccion = ld_formatos_path
    end

    # Only allow a list of trusted parameters through.
    def ld_parrafo_params
      params.require(:ld_parrafo).permit(:ld_parrafo, :texto, :ownr_class, :ownr_id, :ld_tipo_parrafo_id)
    end
end
