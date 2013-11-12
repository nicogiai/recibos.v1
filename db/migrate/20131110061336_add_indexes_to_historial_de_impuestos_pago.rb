class AddIndexesToHistorialDeImpuestosPago < ActiveRecord::Migration
  def change
    add_index :historial_de_impuestos_pagos, [:pago_id, :historial_de_impuesto_id], :unique => true, :name => 'index_hdip_on_p'
    add_index :historial_de_impuestos_pagos, :historial_de_impuesto_id, :unique => false, :name => 'index_hdip_on_hdi'  	
  end
end
