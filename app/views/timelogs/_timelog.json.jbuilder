json.extract! timelog, :id, :log_at, :log_type, :user_id, :created_at, :updated_at
json.url timelog_url(timelog, format: :json)
