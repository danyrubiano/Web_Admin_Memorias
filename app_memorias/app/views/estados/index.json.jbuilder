json.array!(@estados) do |estado|
  json.extract! estado, :id, :nombre, :dias
  json.url estado_url(estado, format: :json)
end
