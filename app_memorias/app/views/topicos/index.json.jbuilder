json.array!(@topicos) do |topico|
  json.extract! topico, :id, :nombre
  json.url topico_url(topico, format: :json)
end
