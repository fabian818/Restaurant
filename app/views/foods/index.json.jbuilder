json.array!(@foods) do |food|
  json.extract! food, :id, :food_type_id, :noun, :description, :cost
  json.url food_url(food, format: :json)
end
