Rails.application.routes.draw do
  resources :ld_parrafos
  resources :ld_formatos
  resources :control_documentos
  resources :are_ares
  resources :empleados do
    match :set_jefatura, via: :get, on: :member
    match :crea_documento, via: :get, on: :member
  end
  resources :cargos
  resources :areas
 
  devise_for :usuarios
  
  # ********************************************************** SCOPES CAPITAN

  scope module: 'aplicacion' do
    resources :app_recursos do
      collection do
        match :ayuda, via: :get
        match :home, via: :get
        match :administracion, via: :get
        match :procesos, via: :get
        match :tablas, via: :get
      end
    end
    # se introduce este controlador para tener una ruta para el manejo general de tablas
    # se puede hacer un menú lateral para manejarlas (proyecto)
    resources :tablas
  end

  scope module: 'autenticacion' do
    resources :app_administradores
    resources :app_nominas
    resources :app_perfiles do
      # recurso SOLO si hay manejo de ESTADOS
      # intentaremos reemplazar la tabla por relaciones con st_modelos
#      resources :st_perfil_modelos
    end
    resources :app_empresas do
      resources :app_administradores
      resources :app_nominas
    end
  end

  scope module: 'recursos' do
    resources :app_contactos
    resources :app_enlaces
    resources :app_mejoras
    resources :app_mensajes do
      match :respuesta, via: :post, on: :collection
      match :estado, via: :get, on: :member
    end
    resources :app_msg_msgs
    resources :app_observaciones
  end

  scope module: 'repositorios' do
    resources :app_repositorios do
      match :publico, via: :get, on: :collection
      match :perfil, via: :get, on: :collection
    end
    resources :app_directorios do
      match :nuevo, via: :post, on: :collection
    end
    resources :app_dir_dires
    resources :app_documentos
    resources :app_archivos
    resources :app_imagenes do
      match :arriba, via: :get, on: :member
      match :abajo, via: :get, on: :member
    end
    resources :app_escaneos do
      match :crea_escaneo, via: :get, on: :collection
    end
  end

  scope module: 'sidelist' do
    resources :sb_elementos
    resources :sb_listas do
      resources :sb_elementos
    end
  end

  scope module: 'estados' do
    resources :st_bandejas
    resources :st_modelos do 
      resources :st_estados
      match :asigna, via: :get, on: :member
    end
    resources :st_estados do
      match :asigna, via: :get, on: :member
    end
    resources :st_logs
#    resources :st_perfil_estados do
#      match :desasignar, via: :get, on: :member
#      match :cambia_rol, via: :get, on: :member
#    end
#    resources :st_perfil_modelos do
#      resources :st_perfil_estados
#      match :desasignar, via: :get, on: :member
#      match :cambia_rol, via: :get, on: :member
#      match :cambia_ingreso, via: :get, on: :member
#    end
  end

  scope module: 'home' do
    resources :h_imagenes
    resources :h_links
    resources :h_temas
  end
  
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'aplicacion/app_recursos#home'

end
