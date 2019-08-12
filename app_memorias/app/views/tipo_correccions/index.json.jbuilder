json.array!(@tipo_correccions) do |tipo_correccion|
  json.extract! tipo_correccion, :id, :nombre
  json.url tipo_correccion_url(tipo_correccion, format: :json)
end
