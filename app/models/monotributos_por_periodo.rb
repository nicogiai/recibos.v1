class MonotributosPorPeriodo < ActiveRecord::Base
  belongs_to :monotributo
  belongs_to :periodo
end
