json.extract! job, :id, :title, :description, :start_date, :end_date, :complete, :creator_id, :developer_id, :github, :discord, :trello, :profile_id, :created_at, :updated_at
json.url job_url(job, format: :json)
