json.extract! job_hunting, :id, :rank, :type, :name, :content, :created_at, :updated_at
json.url job_hunting_url(job_hunting, format: :json)
