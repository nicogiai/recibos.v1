json.array!(@periodos) do |periodo|
  json.extract! periodo, :fecha_inicio, :fecha_fin, :descripcion
  json.url period_url(periodo, format: :json)
end
