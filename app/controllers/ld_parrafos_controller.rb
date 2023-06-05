class LdParrafosController < ApplicationController
  before_action :set_ld_parrafo, only: %i[ show edit update destroy ]

  # GET /ld_parrafos or /ld_parrafos.json
  def index
    @ld_parrafos = LdParrafo.all
  end

  # GET /ld_parrafos/1 or /ld_parrafos/1.json
  def show
  end

  # GET /ld_parrafos/new
  def new
    @ld_parrafo = LdParrafo.new
  end

  # GET /ld_parrafos/1/edit
  def edit
  end

  # POST /ld_parrafos or /ld_parrafos.json
  def create
    @ld_parrafo = LdParrafo.new(ld_parrafo_params)

    respond_to do |format|
      if @ld_parrafo.save
        format.html { redirect_to ld_parrafo_url(@ld_parrafo), notice: "Ld parrafo was successfully created." }
        format.json { render :show, status: :created, location: @ld_parrafo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ld_parrafo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ld_parrafos/1 or /ld_parrafos/1.json
  def update
    respond_to do |format|
      if @ld_parrafo.update(ld_parrafo_params)
        format.html { redirect_to ld_parrafo_url(@ld_parrafo), notice: "Ld parrafo was successfully updated." }
        format.json { render :show, status: :ok, location: @ld_parrafo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ld_parrafo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ld_parrafos/1 or /ld_parrafos/1.json
  def destroy
    @ld_parrafo.destroy

    respond_to do |format|
      format.html { redirect_to ld_parrafos_url, notice: "Ld parrafo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ld_parrafo
      @ld_parrafo = LdParrafo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ld_parrafo_params
      params.require(:ld_parrafo).permit(:ld_parrafo, :texto, :ownr_class, :ownr_id)
    end
end
