class AppAdministrador < ApplicationRecord

	TABLA_FIELDS = [
		'app_administrador', 
		'email',
		'perfil'
	]

	validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'formato de email incorrecto'}
	validates :app_administrador, presence: true, uniqueness: true

	scope :ordered, -> { where(owner_id: nil).order(:app_administrador) }

	def perfil
		perfil = AppPerfil.find_by(email: self.email)
		perfil.blank? ? 'Sin perfil' : 'Perfil activo'
	end

	def empresa
		self.owner_class.blank? ? nil : AppEmpresa.find(self.owner_id)
	end

end
