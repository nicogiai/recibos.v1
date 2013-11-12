class RecibosDeImpuesto < ActiveRecord::Base
  belongs_to :recibo
  belongs_to :historial_de_impuesto
end
