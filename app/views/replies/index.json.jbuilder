json.array!(@replies) do |reply|
  json.extract! reply, :username, :text
  json.url reply_url(reply, format: :json)
end