json.extract! newinformation, :id, :title, :body, :created_at, :updated_at
json.url newinformation_url(newinformation, format: :json)
