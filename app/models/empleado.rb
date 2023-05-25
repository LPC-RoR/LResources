class Empleado < ApplicationRecord
	belongs_to :cargo

    validates_presence_of :nombres, :apellido_paterno, :apellido_materno, :direccion, :telefono, :sexo

	validates :rut, presence: true, rut_valido: true

	def nombre
		"#{self.nombres} #{self.apellido_paterno} #{self.apellido_materno}"
	end

	def indent
		self.cargo.indent + 1
	end
end
