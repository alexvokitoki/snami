json.array!(@bustours) do |bustour|
  json.extract! bustour, :name, :price, :imgurl, :about
  json.url bustour_url(bustour, format: :json)
end