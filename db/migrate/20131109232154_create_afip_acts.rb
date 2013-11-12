class CreateAfipActs < ActiveRecord::Migration
  def change
    create_table :afip_acts do |t|
      t.string :actividad

      t.timestamps
    end
  end
end
