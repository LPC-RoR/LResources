class SbLista < ApplicationRecord

	ACCESOS = {
		dog: ['dog', 'admin', 'nomina', 'general', 'anonimo'],
		admin: ['admin', 'nomina', 'general', 'anonimo'],
		nomina: ['nomina', 'general', 'anonimo'],
		general: ['general', 'anonimo'],
	}

	TABLA_FIELDS = [
		's#sb_lista'
	]

	scope :ordered, -> { order(:sb_lista) }

	has_many :sb_elementos

    validates_presence_of :sb_lista

end
