json.array!(@impuestos) do |impuesto|
  json.extract! impuesto, :impuesto, :importe, :cm, :default_vencimiento0, :default_vencimiento1, :default_vencimiento2, :default_vencimiento3, :default_vencimiento4, :default_vencimiento5, :default_vencimiento6, :default_vencimiento7, :default_vencimiento8, :default_vencimiento9
  json.url tax_url(impuesto, format: :json)
end
