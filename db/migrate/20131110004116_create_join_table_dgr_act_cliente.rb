class CreateJoinTableDgrActCliente < ActiveRecord::Migration
  def change
    create_join_table :dgr_acts, :clientes do |t|
      # t.index [:dgr_act_id, :cliente_id]
      # t.index [:cliente_id, :dgr_act_id]
    end
  end
end
