class PaymentPlace < ActiveRecord::Base
	has_many :impuestos_por_payment_places
	has_many :impuestos, :through => :impuestos_por_payment_places
	has_many :pagos
end
