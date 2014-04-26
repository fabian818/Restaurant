json.array!(@waiters) do |waiter|
  json.extract! waiter, :id, :person_id, :clients, :salary, :state
  json.url waiter_url(waiter, format: :json)
end
