class ClientesPorImpuesto < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :impuesto
end
