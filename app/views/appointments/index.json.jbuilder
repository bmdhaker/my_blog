json.array!(@appointments) do |appointment|
  json.extract! appointment, :physician_id, :patient_id, :appointment_date
  json.url appointment_url(appointment, format: :json)
end
