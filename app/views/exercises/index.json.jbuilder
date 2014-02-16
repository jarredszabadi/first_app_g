json.array!(@exercises) do |exercise|
  json.extract! exercise, :device_id
  json.url exercise_url(exercise, format: :json)
end