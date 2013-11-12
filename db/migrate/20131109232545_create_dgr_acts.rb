class CreateDgrActs < ActiveRecord::Migration
  def change
    create_table :dgr_acts do |t|
      t.string :actividad

      t.timestamps
    end
  end
end
