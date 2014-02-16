json.array!(@equipment) do |equipment|
  json.extract! equipment, :device_id
  json.url equipment_url(equipment, format: :json)
end