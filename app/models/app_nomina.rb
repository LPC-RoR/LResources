class AppNomina < ApplicationRecord

	TABLA_FIELDS = [
		'app_nomina',
		's#email',
		'perfil'
	]

	# intentaremos resolver esto con relaciones para eliminar tablas
#	has_many :st_perfil_modelos

	validates :app_nomina, :email, presence: true
	validates :app_nomina, :email, uniqueness: true

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
