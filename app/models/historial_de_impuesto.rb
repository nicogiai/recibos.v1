class HistorialDeImpuesto < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :impuestos_por_periodo
  has_and_belongs_to_many :pagos
  has_many :recibos_de_impuestos
  has_many :recibos, :through => :recibos_de_impuestos
end
