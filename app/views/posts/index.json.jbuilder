json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :user_id, :published_time, :image_url
  json.url post_url(post, format: :json)
end
