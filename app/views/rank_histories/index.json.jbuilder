json.array!(@rank_histories) do |rank_history|
  json.extract! rank_history, :rank, :date, :number
  json.url rank_history_url(rank_history, format: :json)
end
