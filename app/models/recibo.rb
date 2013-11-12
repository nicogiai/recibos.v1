class Recibo < ActiveRecord::Base
	has_many :recibos_de_impuestos
	has_many :historial_de_impuestos, :through => :recibos_de_impuestos
end
