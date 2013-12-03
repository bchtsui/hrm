json.array!(@members) do |member|
  json.extract! member, :name, :rank, :number
  json.url member_url(member, format: :json)
end
