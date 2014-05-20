json.array!(@joints) do |joint|
  json.extract! joint, :per_id, :brevet_id, :appointment_date, :name
  json.url joint_url(joint, format: :json)
end
