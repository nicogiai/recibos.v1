class ImpuestosPorPeriodo < ActiveRecord::Base
  belongs_to :periodo
  belongs_to :impuesto
end
