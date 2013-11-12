class CreatePeriodos < ActiveRecord::Migration
  def change
    create_table :periodos do |t|
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :descripcion

      t.timestamps
    end
  end
end
