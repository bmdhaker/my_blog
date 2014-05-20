json.array!(@brevets) do |brevet|
  json.extract! brevet, :name
  json.url brevet_url(brevet, format: :json)
end
