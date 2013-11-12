class Pago < ActiveRecord::Base
  belongs_to :payment_place
  has_and_belongs_to_many :historial_de_impuestos
end
