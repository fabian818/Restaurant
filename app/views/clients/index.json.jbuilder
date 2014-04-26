json.array!(@clients) do |client|
  json.extract! client, :id, :person_id, :money_invested, :visits
  json.url client_url(client, format: :json)
end
