json.array!(@articols) do |articol|
  json.extract! articol, :id, :name, :content, :avatar
  json.url articol_url(articol, format: :json)
end
