json.extract! project_update, :id, :project_id, :title, :action, :created_at, :updated_at
json.url project_update_url(project_update, format: :json)
