json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :name, :lesson_time_number
  json.url lecture_url(lecture, format: :json)
end
