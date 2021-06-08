json.extract! doc, :id, :name, :image, :created_at, :updated_at
json.url doc_url(doc, format: :json)
