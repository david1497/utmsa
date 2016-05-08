json.array!(@utilites) do |utilite|
  json.extract! utilite, :id, :title, :avatar
  json.url utilite_url(utilite, format: :json)
end
