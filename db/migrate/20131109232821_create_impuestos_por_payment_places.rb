class CreateImpuestosPorPaymentPlaces < ActiveRecord::Migration
  def change
    create_table :impuestos_por_payment_places do |t|
      t.integer :orden
      t.references :impuesto, index: true
      t.references :payment_place, index: true

      t.timestamps
    end
  end
end
