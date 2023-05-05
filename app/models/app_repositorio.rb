class AppRepositorio < ApplicationRecord

	def directorios
		AppDirectorio.where(owner_class: 'AppRepositorio').where(owner_id: self.id)
	end

	def documentos
		AppDocumento.where(owner_class: 'AppRepositorio').where(owner_id: self.id)
	end

end
