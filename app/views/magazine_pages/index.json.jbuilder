json.array!(@magazine_pages) do |magazine_page|
  json.extract! magazine_page, :id, :page, :magazine _id, :page_layout _id
  json.url magazine_page_url(magazine_page, format: :json)
end
