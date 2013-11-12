class ImpuestosPorPaymentPlace < ActiveRecord::Base
  belongs_to :impuesto
  belongs_to :payment_place
end
