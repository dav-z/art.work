json.extract! post, :id, :user_id, :photo, :caption, :created_at, :updated_at
json.url post_url(post, format: :json)
