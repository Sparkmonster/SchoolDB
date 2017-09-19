json.extract! course, :id, :name, :number, :semester, :date, :created_at, :updated_at
json.url course_url(course, format: :json)
