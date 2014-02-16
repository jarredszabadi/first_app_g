json.array!(@exercise_sets) do |exercise_set|
  json.extract! exercise_set, :device_id, :reps, :mass, :ave_distance, :ave_time, :user_id
  json.url exercise_set_url(exercise_set, format: :json)
end