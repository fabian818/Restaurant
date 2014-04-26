json.array!(@administrators) do |administrator|
  json.extract! administrator, :id, :person_id, :username, :password, :state
  json.url administrator_url(administrator, format: :json)
end
