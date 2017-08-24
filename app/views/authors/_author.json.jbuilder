json.extract! author, :id, :name, :photo, :description, :created_at, :updated_at
json.url author_url(author, format: :json)
