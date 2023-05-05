class StEstado < ApplicationRecord

	TABLA_FIELDS = [
		'orden',
		'st_estado'
	]

	belongs_to :st_modelo

    validates_presence_of :orden, :st_estado

  	def estado
		self.st_estado
	end
end
