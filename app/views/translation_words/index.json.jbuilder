json.array!(@translation_words) do |translation_word|
  json.extract! translation_word, :id, :prev_id, :cud_type, :work_id, :locale_id, :content, :progress_status
  json.url translation_word_url(translation_word, format: :json)
end
