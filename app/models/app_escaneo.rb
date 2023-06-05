class AppEscaneo < ApplicationRecord

	def owner
		self.ownr_class.constantize.find(self.ownr_id)
	end

	def imagenes
		AppImagen.where(owner_class: self.class.name, owner_id: self.id)
	end

end
