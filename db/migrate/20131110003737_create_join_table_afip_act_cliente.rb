class CreateJoinTableAfipActCliente < ActiveRecord::Migration
  def change
    create_join_table :afip_acts, :clientes do |t|
      # t.index [:afip_act_id, :cliente_id]
      # t.index [:cliente_id, :afip_act_id]
    end
  end
end
