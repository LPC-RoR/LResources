module CptnMenuAppHelper

	def menu_base
	    [
	        ['',           '/app_recursos/administracion', 'admin', 'person-rolodex', 'Administración'],
	        ["Procesos",   "/app_recursos/procesos",       'dog',   'radioactive', 'Procesos']
	    ]
	end

	def menu
	    ## Menu principal de la aplicación
	    # [ 'Item del menú', 'link', 'accesso', 'gly' ]
	    [
	        ['',        "/st_bandejas",         'nomina', 'inboxes', 'Gestión por estados'],
	        ['',        "/app_repositorios",    'nomina', 'archive', 'Repositorios de documentos'],
	        ['',        "/ld_formatos",        "admin",   'book', 'Formatos de documentos'],
	        ['',        "/tablas",              'admin',  'table', 'Tablas'],
	        ['',        "/empresas/activa",     "admin",  'diagram-3', 'Empresa activa'],
	        ['',        "/app_empresas",        'admin',  'buildings', 'Empresas'],
	    ]

	end

	def dd_items(item)
		case item
		when 'Valores'
			[
				['Tarifas Base', '/tar_tarifas'],
				['Facturas', 'tar_facturas']
			]
		when 'Documentos'
			[
				['Compartidos', '/app_repos/publico'],
				['Personales', '/app_repos/perfil']
			]
		when 'Enlaces'
			[
			]
		end
	end

	def display_item_app(item, tipo_item)
		true
	end

end