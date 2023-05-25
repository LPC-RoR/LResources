class Area < ApplicationRecord

	TABLA_FIELDS = [
		's#area' 
	]

	belongs_to :app_empresa

	has_many :cargos

	has_one  :jefatura_relation, :foreign_key => "subordinada_id", :class_name => "AreAre"
	has_many :subordinadas, :foreign_key => "jefatura_id", :class_name => "AreAre"

	has_one  :area_jefatura, :through => :jefatura_relation, source: :jefatura
	has_many :areas_subordinadas, :through => :subordinadas, :source => :subordinada

    validates_presence_of :area

	def owner
		self.ownr_class.constantize.find(self.ownr_id)
	end

	def sub_areas
		Area.where(ownr_class: 'Area', ownr_id: self.id)
	end

	def get_empresa_id
		self.owner.class.name == 'AppEmpresa' ? self.owner.id : self.owner.get_empresa_id
	end

	def empresa_origen
		AppEmpresa.find(self.get_empresa_id)
	end

	def indent
		self.owner.class.name == 'AppEmpresa' ? 0 : self.owner.indent + 1
	end

	def lista_empleados
		ids = []
		self.cargos.each do |cargo|
			ids = ids | cargo.empleados.ids
		end
		Empleado.where(id: ids)
	end

	def jefatura?
		not self.lista_empleados.where(jefatura: true).empty?
	end

end
