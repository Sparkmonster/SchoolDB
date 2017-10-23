json.extract! enrollment, :id, :enrollNum, :enrollType, :section_id, :student_id, :created_at, :updated_at
json.url enrollment_url(enrollment, format: :json)
