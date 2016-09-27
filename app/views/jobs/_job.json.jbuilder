json.extract! job, :id, :title, :description, :avatar, :companyId, :companyName, :requirements, :skills, :due, :viewCount, :created_at, :updated_at
json.url job_url(job, format: :json)