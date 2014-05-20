json.array!(@personnees) do |personnee|
  json.extract! personnee, :name, :fonctionn_id
  json.url personnee_url(personnee, format: :json)
end
