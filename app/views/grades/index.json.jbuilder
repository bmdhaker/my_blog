json.array!(@grades) do |grade|
  json.extract! grade, :libgrade, :catgrade_id
  json.url grade_url(grade, format: :json)
end
