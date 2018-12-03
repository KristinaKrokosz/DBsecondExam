json.extract! faculty, :id, :facultyID, :fName, :lName, :department, :email, :created_at, :updated_at
json.url faculty_url(faculty, format: :json)
