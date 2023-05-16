class AppEmpresa < ApplicationRecord

	TABLA_FIELDS = [
		's#app_empresa', 
		'rut'
	]

#	include Validators::Rut

	validates :rut, presence: true, rut_valido: true
    validates_presence_of :app_empresa

	def administradores
		AppAdministrador.where(owner_class: 'AppEmpresa', owner_id: self.id)
	end

	def empleados
		AppNomina.where(owner_class: 'AppEmpresa', owner_id: self.id)
	end

end
