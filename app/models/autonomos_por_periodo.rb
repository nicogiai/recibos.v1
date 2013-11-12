class AutonomosPorPeriodo < ActiveRecord::Base
  belongs_to :autonomo
  belongs_to :periodo
end
