class CreateClientesPorImpuestos < ActiveRecord::Migration
  def change
    create_table :clientes_por_impuestos do |t|
      t.decimal :importe, precision: 8, scale: 2
      t.boolean :recibe_mail
      t.references :cliente, index: true
      t.references :impuesto, index: true

      t.timestamps
    end
  end
end
