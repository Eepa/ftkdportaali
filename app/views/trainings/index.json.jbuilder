json.array!(@trainings) do |training|
  json.extract! training, :id, :description, :duration, :day, :time
  json.url training_url(training, format: :json)
end
