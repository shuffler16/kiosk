json.array!(@articles) do |article|
  json.extract! article, :id, :magazine_page _id, :page_slot, :title, :content, :source
  json.url article_url(article, format: :json)
end
