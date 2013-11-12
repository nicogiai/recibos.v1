class CreateMonotributosPorPeriodos < ActiveRecord::Migration
  def change
    create_table :monotributos_por_periodos do |t|
      t.decimal :importe, precision: 8, scale: 2
      t.references :monotributo, index: true
      t.references :periodo, index: true

      t.timestamps
    end
  end
end
