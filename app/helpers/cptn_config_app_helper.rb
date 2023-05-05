module CptnConfigAppHelper
	def config
		{
			app: {
				nombre: 'LResources',
				home: 'http://www.lresources.cl',
				logo_navbar: 'logo_menu.png'
			},
			color: {
				app: 'dark',
				navbar: 'dark',
				help: 'dark',
				data: 'success',
				title_tema: 'primary',
				detalle_tema: 'primary'
			},	
			menu: {
				dd_enlaces: false,
				contacto: true,
				ayuda: true,
				recursos: false	# está en capitan/drop_down/_ddown_principal.html.erb REVISAR
			},
			image: {
				portada: {clase: img_class[:centrada], size: nil},
				tema: {clase: img_class[:centrada], size: 'half'},
				foot: {clase: img_class[:centrada], size: 'quarter'}
			},
			font_size: {
				title: 4,
				title_tema: 1,
				detalle_tema: 6
			}
		}
	end
end
