json.array!(@correccions) do |correccion|
  json.extract! correccion, :id, :tipo_correccion_id, :teacher_id, :mem_id, :validez_correcion, :ruta_correccion
  json.url correccion_url(correccion, format: :json)
end
