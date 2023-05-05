class AppAdministrador < ApplicationRecord

	TABLA_FIELDS = [
		'app_administrador', 
		'email',
		'perfil'
	]

	validates :app_administrador, :email, presence: true
	validates :app_administrador, :email, uniqueness: true

	def perfil
		perfil = AppPerfil.find_by(email: self.email)
		perfil.blank? ? 'Sin perfil' : 'Perfil activo'
	end

end
