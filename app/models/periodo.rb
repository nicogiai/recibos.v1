class Periodo < ActiveRecord::Base
	has_many :autonomos_por_periodos
	has_many :autonomos, :through => :autonomos_por_periodos
	has_many :monotributos_por_periodos
	has_many :monotributos, :through => :monotributos_por_periodos
	has_many :impuestos_por_periodos
	has_many :impuestos, :through => :impuestos_por_periodos
end
