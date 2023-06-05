class LdFormatosController < ApplicationController
  before_action :set_ld_formato, only: %i[ show edit update destroy ]

  # GET /ld_formatos or /ld_formatos.json
  def index
    @ld_formatos = LdFormato.all
  end

  # GET /ld_formatos/1 or /ld_formatos/1.json
  def show
  end

  # GET /ld_formatos/new
  def new
    @ld_formato = LdFormato.new
  end

  # GET /ld_formatos/1/edit
  def edit
  end

  # POST /ld_formatos or /ld_formatos.json
  def create
    @ld_formato = LdFormato.new(ld_formato_params)

    respond_to do |format|
      if @ld_formato.save
        format.html { redirect_to ld_formato_url(@ld_formato), notice: "Ld formato was successfully created." }
        format.json { render :show, status: :created, location: @ld_formato }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ld_formato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ld_formatos/1 or /ld_formatos/1.json
  def update
    respond_to do |format|
      if @ld_formato.update(ld_formato_params)
        format.html { redirect_to ld_formato_url(@ld_formato), notice: "Ld formato was successfully updated." }
        format.json { render :show, status: :ok, location: @ld_formato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ld_formato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ld_formatos/1 or /ld_formatos/1.json
  def destroy
    @ld_formato.destroy

    respond_to do |format|
      format.html { redirect_to ld_formatos_url, notice: "Ld formato was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ld_formato
      @ld_formato = LdFormato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ld_formato_params
      params.require(:ld_formato).permit(:ld_formato, :ownr_class, :ownr_id)
    end
end
