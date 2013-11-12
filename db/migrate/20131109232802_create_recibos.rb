class CreateRecibos < ActiveRecord::Migration
  def change
    create_table :recibos do |t|
      t.string :concepto
      t.decimal :otros_importes, precision: 8, scale: 2
      t.text :notas

      t.timestamps
    end
  end
end
