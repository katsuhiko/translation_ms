json.array!(@words) do |word|
  json.extract! word, :id, :dictionary_id, :use_status
  json.url word_url(word, format: :json)
end
