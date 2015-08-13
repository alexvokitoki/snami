json.array!(@hottours) do |hottour|
  json.extract! hottour, :name, :price, :imgurl, :about
  json.url hottour_url(hottour, format: :json)
end