class ControlDocumento < ApplicationRecord

	TABLA_FIELDS = [
		'control_documento', 
		'existencia',
		'vencimiento'
	]

	def owner
		self.ownr_class.constantize.find(self.ownr_id)
	end

	def ruta
		self.control_documento.split('::').join('/')
	end

end
