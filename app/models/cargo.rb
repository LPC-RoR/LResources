class Cargo < ApplicationRecord
	belongs_to :area

	has_many :empleados

    validates_presence_of :cargo

	validates :dotacion, presence: true, numericality: { only_integer: true }

	def indent
		self.area.indent + 1
	end

	def control_documentos
		ControlDocumento.where(ownr_class: self.class.name, ownr_id: self.id)
	end

end
