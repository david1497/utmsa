json.array!(@legislations) do |legislation|
  json.extract! legislation, :id, :titlu, :avatar
  json.url legislation_url(legislation, format: :json)
end
