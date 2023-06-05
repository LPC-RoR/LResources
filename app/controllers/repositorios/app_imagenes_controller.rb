class Repositorios::AppImagenesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :inicia_sesion
  before_action :set_app_imagen, only: [:show, :edit, :update, :destroy, :arriba, :abajo]
  before_action :carga_solo_sidebar, only: %i[ show new edit create update ]
  after_action  :ordena_lista, nly: :destroy

  include Sidebar

  # GET /app_imagenes
  # GET /app_imagenes.json
  def index
  end

  # GET /app_imagenes/1
  # GET /app_imagenes/1.json
  def show
  end

  # GET /app_imagenes/new
  def new
    owner = params[:class_name].constantize.find(params[:objeto_id])
    @objeto = AppImagen.new(owner_class: params[:class_name], owner_id: params[:objeto_id], orden: owner.imagenes.count + 1)
  end

  # GET /app_imagenes/1/edit
  def edit
  end

  # POST /app_imagenes
  # POST /app_imagenes.json
  def create
    @objeto = AppImagen.new(app_imagen_params)

    respond_to do |format|
      if @objeto.save
        set_redireccion
        format.html { redirect_to @redireccion, notice: 'Imagen fue exitósamente creado.' }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
        format.turbo_stream { render "0p/form/form_update", status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_imagenes/1
  # PATCH/PUT /app_imagenes/1.json
  def update
    respond_to do |format|
      if @objeto.update(app_imagen_params)
        set_redireccion
        format.html { redirect_to @redireccion, notice: 'Imagen fue exitósamente actualizada.' }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  def arriba
    owner = @objeto.owner
    siguiente = owner.imagenes.find_by(orden: @objeto.orden - 1)
    @objeto.orden -= 1
    @objeto.save
    siguiente.orden += 1
    siguiente.save

    redirect_to owner
  end

  def abajo
    owner = @objeto.owner
    anterior = owner.imagenes.find_by(orden: @objeto.orden + 1)
    @objeto.orden += 1
    @objeto.save
    anterior.orden -= 1
    anterior.save

    redirect_to owner
  end

  def ordena_lista
    @objeto.owner.imagenes.order(:orden).each_with_index do |val, index|
      if val.orden != index + 1
        val.orden = index + 1
        val.save
      end
    end
  end

  # DELETE /app_imagenes/1
  # DELETE /app_imagenes/1.json
  def destroy
    set_redireccion
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to @redireccion, notice: 'Imagen fue exitósamente eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def carga_solo_sidebar
      carga_sidebar(nombre_sidebar(controller_name), nil)
    end

    def set_app_imagen
      @objeto = AppImagen.find(params[:id])
    end

    def set_redireccion
      @redireccion = @objeto.owner_class.constantize.find(@objeto.owner_id)
    end

    # Only allow a list of trusted parameters through.
    def app_imagen_params
      params.require(:app_imagen).permit(:app_imagen, :owner_class, :owner_id, :orden, :app_imagen_cache)
    end
end
