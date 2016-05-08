json.array!(@subcategoris) do |subcategori|
  json.extract! subcategori, :id, :categori_id, :name, :content, :avatar
  json.url subcategori_url(subcategori, format: :json)
end
