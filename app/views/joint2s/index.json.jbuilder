json.array!(@joint2s) do |joint2|
  json.extract! joint2, :per_id, :brevet_id, :appointment_date, :name
  json.url joint2_url(joint2, format: :json)
end
