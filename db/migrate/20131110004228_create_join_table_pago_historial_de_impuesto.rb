class CreateJoinTablePagoHistorialDeImpuesto < ActiveRecord::Migration
  def change
    create_join_table :pagos, :historial_de_impuestos do |t|
      # t.index [:pago_id, :historial_de_impuesto_id]
      # t.index [:historial_de_impuesto_id, :pago_id]
    end
  end
end
