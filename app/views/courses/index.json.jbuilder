json.array!(@courses) do |course|
  json.extract! course, :name, :description, :start_at, :ends_at
  json.url course_url(course, format: :json)
end
