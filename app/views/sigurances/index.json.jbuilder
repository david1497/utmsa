json.array!(@sigurances) do |sigurance|
  json.extract! sigurance, :id, :nume, :prenume, :tel, :email, :content
  json.url sigurance_url(sigurance, format: :json)
end
