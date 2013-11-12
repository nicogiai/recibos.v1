class Impuesto < ActiveRecord::Base
	has_many :clientes_por_impuestos
	has_many :clientes, :through => :clientes_por_impuestos
	has_many :impuestos_por_periodos
	has_many :periodos, :through => :impuestos_por_periodos
	has_many :impuestos_por_payment_places
	has_many :payment_places, :through => :impuestos_por_payment_places
end
