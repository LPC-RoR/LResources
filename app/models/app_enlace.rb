class AppEnlace < ApplicationRecord

	TABLA_FIELDS = [
		'e#link'
	]

    validates_presence_of :app_enlace, :link

	def padre
		self.owner_class.constantize.find(self.owner_id)
	end

end
