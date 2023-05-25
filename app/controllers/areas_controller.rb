class AreasController < ApplicationController
  before_action :set_area, only: %i[ show edit update destroy ]

  # GET /areas or /areas.json
  def index
    @coleccion = Area.all
  end

  # GET /areas/1 or /areas/1.json
  def show
  end

  # GET /areas/new
  def new
    padre = params[:class_name].constantize.find(params[:objeto_id])
    empresa_id = params[:class_name] == 'AppEmpresa' ? params[:objeto_id] : padre.get_empresa_id
    @objeto = Area.new(app_empresa_id: empresa_id, ownr_class: params[:class_name], ownr_id: params[:objeto_id])
  end

  # GET /areas/1/edit
  def edit
  end

  # POST /areas or /areas.json
  def create
    @objeto = Area.new(area_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Area was successfully created." }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
        format.turbo_stream { render "0p/form/form_update", status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /areas/1 or /areas/1.json
  def update
    respond_to do |format|
      if @objeto.update(area_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: "Area was successfully updated." }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas/1 or /areas/1.json
  def destroy
    set_redireccion
    @objeto.destroy

    respond_to do |format|
      format.html { redirect_to @redireccion, notice: "Area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @objeto = Area.find(params[:id])
    end

    def set_redireccion
      @redireccion = @objeto.empresa_origen
    end

    # Only allow a list of trusted parameters through.
    def area_params
      params.require(:area).permit(:area, :ownr_class, :ownr_id, :app_empresa_id)
    end
end
