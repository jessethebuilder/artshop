json.array!(@pieces) do |piece|
  json.extract! piece, :id, :name, :medium, :description, :height, :length, :width, :weight, :original_price
  json.url piece_url(piece, format: :json)
end
