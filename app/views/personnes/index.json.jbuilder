json.array!(@personnes) do |personne|
  json.extract! personne, :nom, :fonction_id
  json.url personne_url(personne, format: :json)
end
