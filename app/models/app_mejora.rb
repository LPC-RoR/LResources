class AppMejora < ApplicationRecord

	belongs_to :app_perfil

	TABLA_FIELDS = [
		'app_mejora'
	]

	def padre
		self.owner_class.constantize.find(self.owner_id)
	end

end
