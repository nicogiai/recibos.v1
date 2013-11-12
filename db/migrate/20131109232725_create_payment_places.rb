class CreatePaymentPlaces < ActiveRecord::Migration
  def change
    create_table :payment_places do |t|
      t.string :lugar
      t.text :notas

      t.timestamps
    end
  end
end
