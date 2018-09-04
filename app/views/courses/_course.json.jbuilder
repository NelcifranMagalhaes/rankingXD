json.extract! course, :id, :name, :rate, :average_students, :created_at, :updated_at
json.url course_url(course, format: :json)
