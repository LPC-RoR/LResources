class AppArchivo < ApplicationRecord

	require 'carrierwave/orm/activerecord'

	TABLA_FIELDS = [
		'f#app_archivo',
		'created_at'
	]

	mount_uploader :app_archivo, ArchivoUploader

    validates_presence_of :app_archivo

	def owner
		self.owner_class.constantize.find(self.owner_id)
	end

	def d_nombre
		(self.nombre.blank? ? (self.documento.present? ? self.documento.documento : self.archivo.url.split('/').last) : self.nombre)
	end

	def existencia
		self.owner.doc_existencia
	end

	def vencimiento
		self.owner.doc_vencimiento
	end

end
