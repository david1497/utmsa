json.array!(@anounces) do |anounce|
  json.extract! anounce, :id, :titlu, :content, :grupe_id
  json.url anounce_url(anounce, format: :json)
end
