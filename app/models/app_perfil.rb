class AppPerfil < ApplicationRecord

	TABLA_FIELDS = [
		'email'
	]

	# Estas relaciones tienen el bjetivoo de preservar el autor de los recursos
	has_many :app_observaciones
	has_many :app_mejoras
	has_many :app_mensajes

	def app_enlaces
		AppEnlace.where(owner_class: 'AppPerfil', owner_id: self.id)
	end

	def administrador?
		AppAdministrador.find_by(email: self.email).present?
	end

	def repositorio
		AppRepositorio.where(owner_class: 'AppPerfil').find_by(owner_id: self.id)
	end

end
