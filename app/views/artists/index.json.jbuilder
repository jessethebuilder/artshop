json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :description, :original_rate, :print_rate
  json.url artist_url(artist, format: :json)
end
