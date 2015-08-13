json.array!(@countries) do |country|
  json.extract! country, :name, :imgurl, :about
  json.url country_url(country, format: :json)
end