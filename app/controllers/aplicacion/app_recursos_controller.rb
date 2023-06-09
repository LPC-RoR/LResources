class Aplicacion::AppRecursosController < ApplicationController
  before_action :authenticate_usuario!, only: [:administracion, :procesos]
  before_action :inicia_sesion, only: [:administracion, :procesos, :home]

  include Sidebar

  helper_method :sort_column, :sort_direction

  def index
  end

  def home
  end

  def ayuda
    carga_sidebar('Ayuda', params[:id])
  end

  def administracion
    carga_sidebar('Administración', params[:id])
  end

  def tablas
    init_tab( { tablas: ['Tarifas Generales & UF', 'Cuantías & Tribunales o Cortes', 'Tipos de Causa', 'Enlaces'] }, true )

    if @options[:tablas] == 'Tarifas Generales & UF'
      init_tabla('tar_tarifas', TarTarifa.where(owner_class: ''), false)
      add_tabla('tar_uf_sistemas', TarUfSistema.all.order(fecha: :desc), false)
    elsif @options[:tablas] == 'Cuantías & Tribunales o Cortes'
      init_tabla('tar_detalle_cuantias', TarDetalleCuantia.all.order(:tar_detalle_cuantia), false)
      add_tabla('tribunal_cortes', TribunalCorte.all.order(:tribunal_corte), false)
    elsif @options[:tablas] == 'Tipos de Causa'
      init_tabla('tipo_causas', TipoCausa.all.order(:tipo_causa), false)
    elsif @options[:tablas] == 'Enlaces'
      init_tabla('app_enlaces', AppEnlace.where(owner_id: nil).order(:descripcion), false)
      init_tabla('perfil-app_enlaces', AppEnlace.where(owner_class: 'AppPerfil', owner_id: perfil_activo.id).order(:descripcion), false)
    end
  end

  def procesos
    TarFormula.all.each do |tar_formula|
      tar_formula.tar_tarifa_id = TarPago.find(tar_formula.tar_pago_id).tar_tarifa_id
      tar_formula.save
    end

    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def sort_column
      Publicacion.column_names.include?(params[:sort]) ? params[:sort] : "Author"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
