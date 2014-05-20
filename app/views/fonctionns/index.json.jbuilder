json.array!(@fonctionns) do |fonctionn|
  json.extract! fonctionn, :name
  json.url fonctionn_url(fonctionn, format: :json)
end
