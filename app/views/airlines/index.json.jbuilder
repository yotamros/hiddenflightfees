json.array!(@airlines) do |airline|
  json.extract! airline, :id, :name, :carry_on, :pet, :food
  json.url airline_url(airline, format: :json)
end
