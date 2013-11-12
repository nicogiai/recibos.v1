class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.decimal :importe, precision: 8, scale: 2
      t.text :notas
      t.references :payment_place, index: true

      t.timestamps
    end
  end
end
