class AppImagen < ApplicationRecord

	require 'carrierwave/orm/activerecord'

	mount_uploader :app_imagen, ImagenUploader

    validates_presence_of :app_imagen

	def owner
		self.owner_class.constantize.find(self.owner_id)
	end
end
