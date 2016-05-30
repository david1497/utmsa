json.array!(@grupes) do |grupe|
  json.extract! grupe, :id, :name
  json.url grupe_url(grupe, format: :json)
end
