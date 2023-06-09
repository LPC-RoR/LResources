module CptnMapHelper

	## ------------------------------------------------------- LAYOUTS

	def get_layout
		if bandeja_display?
			'Bandejas'
		elsif controller_name == 'app_mensajes' and usuario_signed_in?
			'Mensajes'
		elsif sidebar_display?
			'Menu'
		else
			app_get_layout
		end
	end

	## ------------------------------------------------------- PARTIALS

	# dir == nil => sólo controller
	def get_partial_dir(controller, dir)
		scp = scope_controller(controller).blank? ? '' : "#{scope_controller(controller)}/"
		dir = (dir.blank? or dir == 'controller') ? '' : "#{dir}/"
		"#{scp}#{controller}/#{dir}"
	end

	# Este helper pergunta si hay un partial con un nombre particular en el directorio del controlador
	# tipo: {nil='controlador', 'partials', (ruta-adicional)}
	def partial?(controller, dir, partial)
#		File.exist?("app/views/#{(scope_controller(controller).blank? ? '' : "#{scope_controller(controller)}/")}#{controller}/_#{partial}.html.erb")
		File.exist?("app/views/#{get_partial_dir(controller, dir)}_#{partial}.html.erb")
	end

	def get_partial(controller, dir, partial)
		"#{get_partial_dir(controller, dir)}#{partial}"
	end

	## ------------------------------------------------------- SCOPES & PARTIALS

	def controllers_scope
		{
			aplicacion:    ['app_recursos'],
			autenticacion: ['app_administradores', 'app_nominas', 'app_perfiles', 'app_empresas'],
			recursos:      ['app_contactos', 'app_enlaces', 'app_mejoras', 'app_mensajes', 'app_observaciones'],
			repositorios:  ['app_repos', 'app_directorios', 'app_documentos', 'app_archivos', 'app_imagenes'],
			home:          ['h_temas', 'h_links', 'h_imagenes'],
			help:          ['conversaciones', 'mensajes', 'hlp_pasos', 'temaf_ayudas', 'hlp_tutoriales'],
			sidelist:      ['sb_listas', 'sb_elementos'],
			busqueda:      ['ind_clave_facetas', 'ind_claves', 'ind_indice_facetas', 'ind_indices', 'ind_palabras', 'ind_reglas', 'ind_sets'],
			estados:       ['st_bandejas', 'st_modelos', 'st_estados'],
			data:          ['caracteristicas', 'caracterizaciones', 'columnas', 'datos', 'encabezados', 'etapas', 'lineas', 'opciones', 'tablas']
		}
	end

	def scope_controller(controller)
		scope = nil
		controllers_scope.keys.each do |key_sym|
			scope = key_sym.to_s if controllers_scope[key_sym].include?(controller)
		end
		scope.blank? ? app_scope_controller(controller) : scope
	end

	## -------------------------------------------------------- BANDEJAS

	# desde controller/concern/map
	# def bandeja_controllers
	# def bandeja_display?

	def primer_estado(controller)
		st_modelo = StModelo.find_by(st_modelo: controller.classify)
		st_modelo.blank? ? nil : st_modelo.primer_estado.st_estado
	end

	def estado_ingreso?(modelo, estado)
		st_modelo = StModelo.find_by(st_modelo: modelo)
		(st_modelo.blank? or st_modelo.st_estados.empty?) ? false : (st_modelo.st_estados.order(:orden).first.st_estado == estado)
	end

	def count_modelo_estado(modelo, estado)0
		modelo.constantize.where(estado: estado).count == 0 ? '' : "(#{modelo.constantize.where(estado: estado).count})"
	end

	## ------------------------------------------------------- MENU

	def sidebar_controllers
		base_sidebar_controllers = [
			'sb_listas', 'sb_elementos',
			'app_administradores', 'app_empresas', 'app_nominas', 'app_perfiles', 'app_imagenes',
			'h_portadas', 'h_temas', 'h_links', 'h_imagenes',
			'hlp_tutoriales', 'hlp_pasos',
			'st_modelos', 'st_estados'
		]
		base_sidebar_controllers.union(app_sidebar_controllers)
	end

	def sidebar_display?
		(controller_name == 'app_recursos' and action_name == 'administracion') or sidebar_controllers.include?(controller_name)
	end

end