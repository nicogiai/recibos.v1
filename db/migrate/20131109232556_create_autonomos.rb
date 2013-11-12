class CreateAutonomos < ActiveRecord::Migration
  def change
    create_table :autonomos do |t|
      t.string :categoria
      t.decimal :importe, precision: 8, scale: 2

      t.timestamps
    end
  end
end
