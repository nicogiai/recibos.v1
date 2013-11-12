class CreateImpuestos < ActiveRecord::Migration
  def change
    create_table :impuestos do |t|
      t.string :impuesto
      t.decimal :importe, precision: 8, scale: 2
      t.boolean :cm
      t.date :default_vencimiento0
      t.date :default_vencimiento1
      t.date :default_vencimiento2
      t.date :default_vencimiento3
      t.date :default_vencimiento4
      t.date :default_vencimiento5
      t.date :default_vencimiento6
      t.date :default_vencimiento7
      t.date :default_vencimiento8
      t.date :default_vencimiento9

      t.timestamps
    end
  end
end
