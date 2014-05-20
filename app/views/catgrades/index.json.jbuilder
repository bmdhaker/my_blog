json.array!(@catgrades) do |catgrade|
  json.extract! catgrade, :libcatgrade
  json.url catgrade_url(catgrade, format: :json)
end
