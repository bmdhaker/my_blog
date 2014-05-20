json.array!(@fonctions) do |fonction|
  json.extract! fonction, :libfonction
  json.url fonction_url(fonction, format: :json)
end
