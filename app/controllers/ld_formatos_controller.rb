class LdFormatosController < ApplicationController
  before_action :set_ld_formato, only: %i[ show edit update destroy ]

  # GET /ld_formatos or /ld_formatos.json
  def index
    init_tabla('ld_tipo_formatos', LdTipoFormato.all.order(:ld_tipo_formato), false)
    add_tabla('ld_tipo_parrafos', LdTipoParrafo.all.order(:ld_tipo_parrafo), false)
  end

  # GET /ld_formatos/1 or /ld_formatos/1.json
  def show
  end

  # GET /ld_formatos/new
  def new
    @objeto = LdFormato.new(ld_tipo_formato_id: params[:objeto_id])
  end

  # GET /ld_formatos/1/edit
  def edit
  end

  # POST /ld_formatos or /ld_formatos.json
  def create
    @objeto = LdFormato.new(ld_formato_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Formato fue exitóasamente creado." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ld_formatos/1 or /ld_formatos/1.json
  def update
    respond_to do |format|
      if @objeto.update(ld_formato_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Formato fue exitóasamente actualizado." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ld_formatos/1 or /ld_formatos/1.json
  def destroy
    set_redireccion
    @objeto.destroy

    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Formato fue exitóasamente eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ld_formato
      @objeto = LdFormato.find(params[:id])
    end

    def set_redireccion
      @redireccion = ld_formatos_path
    end

    # Only allow a list of trusted parameters through.
    def ld_formato_params
      params.require(:ld_formato).permit(:ld_formato, :ownr_class, :ownr_id, :ld_tipo_formato_id)
    end
end
