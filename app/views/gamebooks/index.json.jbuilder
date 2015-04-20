json.array!(@gamebooks) do |gamebook|
  json.extract! gamebook, :id, :isbn, :title, :price
  json.url gamebook_url(gamebook, format: :json)
end
