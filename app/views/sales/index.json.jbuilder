json.array!(@sales) do |sale|
  json.extract! sale, :id, :client_id, :waiter_id, :total_cost, :state
  json.url sale_url(sale, format: :json)
end
