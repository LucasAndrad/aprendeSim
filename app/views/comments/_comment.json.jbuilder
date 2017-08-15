json.extract! comment, :id, :author, :comment_body, :created_at, :updated_at
json.url comment_url(comment, format: :json)
