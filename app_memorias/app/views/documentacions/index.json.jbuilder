json.array!(@documentacions) do |documentacion|
  json.extract! documentacion, :id, :nombre, :validez_documentacion, :mem_id
  json.url documentacion_url(documentacion, format: :json)
end
