class AddIndexesToAfipActsClientes < ActiveRecord::Migration
  def change
    add_index :afip_acts_clientes, [:afip_act_id, :cliente_id], :unique => true
    add_index :afip_acts_clientes, :cliente_id, :unique => false
  end
end
