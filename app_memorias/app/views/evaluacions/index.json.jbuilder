json.array!(@evaluacions) do |evaluacion|
  json.extract! evaluacion, :id, :teacher_id, :alumno_id, :nota
  json.url evaluacion_url(evaluacion, format: :json)
end
