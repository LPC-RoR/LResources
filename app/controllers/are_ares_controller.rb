class AreAresController < ApplicationController
  before_action :set_are_ar, only: %i[ show edit update destroy ]

  # GET /are_ares or /are_ares.json
  def index
    @are_ares = AreAre.all
  end

  # GET /are_ares/1 or /are_ares/1.json
  def show
  end

  # GET /are_ares/new
  def new
    @are_ar = AreAre.new
  end

  # GET /are_ares/1/edit
  def edit
  end

  # POST /are_ares or /are_ares.json
  def create
    @are_ar = AreAre.new(are_ar_params)

    respond_to do |format|
      if @are_ar.save
        format.html { redirect_to are_ar_url(@are_ar), notice: "Are are was successfully created." }
        format.json { render :show, status: :created, location: @are_ar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @are_ar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /are_ares/1 or /are_ares/1.json
  def update
    respond_to do |format|
      if @are_ar.update(are_ar_params)
        format.html { redirect_to are_ar_url(@are_ar), notice: "Are are was successfully updated." }
        format.json { render :show, status: :ok, location: @are_ar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @are_ar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /are_ares/1 or /are_ares/1.json
  def destroy
    @are_ar.destroy

    respond_to do |format|
      format.html { redirect_to are_ares_url, notice: "Are are was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_are_ar
      @are_ar = AreAre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def are_ar_params
      params.require(:are_ar).permit(:jefatura_id, :subordinada_id)
    end
end
