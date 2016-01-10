json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :is_private
  json.url comment_url(comment, format: :json)
end
