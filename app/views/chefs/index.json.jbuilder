json.array!(@chefs) do |chef|
  json.extract! chef, :id, :person_id, :cooked, :salary
  json.url chef_url(chef, format: :json)
end
