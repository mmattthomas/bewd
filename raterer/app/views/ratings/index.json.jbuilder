json.array!(@ratings) do |rating|
  json.extract! rating, :id, :rate, :comments
  json.url rating_url(rating, format: :json)
end
