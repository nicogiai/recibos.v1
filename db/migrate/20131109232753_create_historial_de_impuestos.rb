class CreateHistorialDeImpuestos < ActiveRecord::Migration
  def change
    create_table :historial_de_impuestos do |t|
      t.references :cliente, index: true
      t.references :impuestos_por_periodo, index: true
      t.boolean :cliente_avisado
      t.decimal :importe, precision: 8, scale: 2
      t.text :notas

      t.timestamps
    end
  end
end
