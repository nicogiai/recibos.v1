json.array!(@clientes) do |cliente|
  json.extract! cliente, :cliente, :cuit, :telefono1, :telefono2, :telefono3, :email1, :email2, :fecha_inicio, :clave_fiscal, :clave_muni, :domicilio1, :domicilio2, :notas, :iibb_cm, :cant_adherentes
  json.url cliente_url(cliente, format: :json)
end
