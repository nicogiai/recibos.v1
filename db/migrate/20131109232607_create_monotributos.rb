class CreateMonotributos < ActiveRecord::Migration
  def change
    create_table :monotributos do |t|
      t.string :categoria
      t.decimal :importe, precision: 8, scale: 2
      t.boolean :si_adherente
      t.decimal :importe_por_adherente, precision: 8, scale: 2

      t.timestamps
    end
  end
end
