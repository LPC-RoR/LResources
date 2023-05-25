module CptnMenuAppHelper

	def menu_base
	    [
	        ['',           '/app_recursos/administracion', 'admin', 'person-rolodex'],
	        ["Procesos",   "/app_recursos/procesos",       'dog',   'radioactive']
	    ]
	end

	def menu
	    ## Menu principal de la aplicación
	    # [ 'Item del menú', 'link', 'accesso', 'gly' ]
	    [
	        ['',        "/st_bandejas",         'nomina', 'inboxes'],
	        ['',        "/app_repositorios",    'nomina', 'file-earmark-text'],
	        ['',        "/tablas",              'admin',  'table'],
	        ['',        "/empresas/activa",     "admin",  'diagram-3'],
	        ['',        "/app_empresas",        'admin',  'buildings'],
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