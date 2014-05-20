json.array!(@campaigns) do |campaign|
  json.extract! campaign, :name, :account_id
  json.url campaign_url(campaign, format: :json)
end
