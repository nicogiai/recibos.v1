class Monotributo < ActiveRecord::Base
	has_many :clientes
	has_many :monotributos_por_periodos
	has_many :periodos, :through => :monotributos_por_periodos
end
