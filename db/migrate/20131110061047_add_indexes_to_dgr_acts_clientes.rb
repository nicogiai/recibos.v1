class AddIndexesToDgrActsClientes < ActiveRecord::Migration
  def change
    add_index :clientes_dgr_acts, [:dgr_act_id, :cliente_id], :unique => true
    add_index :clientes_dgr_acts, :cliente_id, :unique => false
  end
end
