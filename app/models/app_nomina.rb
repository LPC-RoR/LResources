class AppNomina < ApplicationRecord

	TABLA_FIELDS = [
		'app_nomina',
		's#email',
		'perfil'
	]

	# intentaremos resolver esto con relaciones para eliminar tablas
#	has_many :st_perfil_modelos

	validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'formato de email incorrecto'}
	validates :app_nomina, presence: true, uniqueness: true

	scope :ordered, -> { where(owner_id: nil).order(:app_nomina) }

	# se usan si la aplicacion tiene Tarifas
	def tar_bases
		TarBase.where(owner_class: 'AppNomina', owner_id: self.id)
	end

	def tar_variables
		TarVariable.where(owner_class: 'AppNomina', owner_id: self.id)
	end

	def perfil
		perfil = AppPerfil.find_by(email: self.email)
		perfil.blank? ? 'Sin perfil' : 'Perfil activo'
	end

	def empresa
		self.owner_class.blank? ? nil : AppEmpresa.find(self.owner_id)
	end

end
