json.array!(@literatures) do |literature|
  json.extract! literature, :id, :titlu, :content
  json.url literature_url(literature, format: :json)
end
