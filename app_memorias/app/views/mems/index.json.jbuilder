json.array!(@mems) do |mem|
  json.extract! mem, :id, :estado_id, :fecha_memoria, :fecha_avance, :fecha_defensa, :fecha_limimte
  json.url mem_url(mem, format: :json)
end
