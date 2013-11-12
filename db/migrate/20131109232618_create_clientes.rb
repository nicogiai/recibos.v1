class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cliente
      t.string :cuit
      t.string :telefono1
      t.string :telefono2
      t.string :telefono3
      t.string :email1
      t.string :email2
      t.date :fecha_inicio
      t.string :clave_fiscal
      t.string :clave_muni
      t.string :domicilio1
      t.string :domicilio2
      t.text :notas
      t.string :iibb_cm
      t.integer :cant_adherentes
      t.references :autonomo, index: true
      t.references :monotributo, index: true

      t.timestamps
    end
  end
end
