class CreateAutonomosPorPeriodos < ActiveRecord::Migration
  def change
    create_table :autonomos_por_periodos do |t|
      t.decimal :importe, precision: 8, scale: 2
      t.references :autonomo, index: true
      t.references :periodo, index: true

      t.timestamps
    end
  end
end
