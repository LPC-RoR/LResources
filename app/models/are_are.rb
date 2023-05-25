class AreAre < ApplicationRecord
  belongs_to :jefatura, :class_name => "Area", :inverse_of => :jefatura_relation
  belongs_to :subordinada, :class_name => "Area", :inverse_of => :subordinadas
end
