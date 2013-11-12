class CreateMovimientos < ActiveRecord::Migration
  def change
    create_table :movimientos do |t|
      t.string :concepto
      t.decimal :importe, precision: 8, scale: 2
      t.decimal :saldo, precision: 8, scale: 2
      t.text :notas

      t.timestamps
    end
  end
end
