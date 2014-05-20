json.array!(@pers) do |per|
  json.extract! per, :name
  json.url per_url(per, format: :json)
end
