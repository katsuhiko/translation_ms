json.array!(@locales) do |locale|
  json.extract! locale, :id, :lang_territory
  json.url locale_url(locale, format: :json)
end
