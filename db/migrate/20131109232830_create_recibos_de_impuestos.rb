class CreateRecibosDeImpuestos < ActiveRecord::Migration
  def change
    create_table :recibos_de_impuestos do |t|
      t.references :recibo, index: true
      t.references :historial_de_impuesto, index: true
      t.date :fecha_programada_de_pago

      t.timestamps
    end
  end
end
