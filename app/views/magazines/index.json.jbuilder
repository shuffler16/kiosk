json.array!(@magazines) do |magazine|
  json.extract! magazine, :id, :user, :title, :short_description, :long_description, :status, :price
  json.url magazine_url(magazine, format: :json)
end
