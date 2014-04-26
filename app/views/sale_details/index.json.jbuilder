json.array!(@sale_details) do |sale_detail|
  json.extract! sale_detail, :id, :sale_id, :food_id, :quantity, :amount
  json.url sale_detail_url(sale_detail, format: :json)
end
