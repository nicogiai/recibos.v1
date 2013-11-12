class Autonomo < ActiveRecord::Base
	has_many :clientes
	has_many :autonomos_por_periodos
	has_many :periodos, :through => :autonomos_por_periodos
end
