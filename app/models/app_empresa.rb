class AppEmpresa < ApplicationRecord

	TABLA_FIELDS = [
		's#app_empresa', 
		'rut'
	]

	has_many :areas

	validates :rut, presence: true, rut_valido: true
    validates_presence_of :app_empresa

	scope :ordered, -> { order(:app_empresa) }

	def administradores
		AppAdministrador.where(owner_class: 'AppEmpresa', owner_id: self.id)
	end

	def empleados
		AppNomina.where(owner_class: 'AppEmpresa', owner_id: self.id)
	end

	def areas_base
		Area.where(ownr_class: 'AppEmpresa', ownr_id: self.id)
	end

	def control_documentos
		ControlDocumento.where(ownr_class: 'AppEmpresa', ownr_id: self.id)
	end

end
