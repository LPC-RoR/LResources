class HLink < ApplicationRecord

	TABLA_FIELDS = [
		's#h_link'
	]

	def padre
		self.owner_class.constantize.find(self.owner_id)
	end
end
