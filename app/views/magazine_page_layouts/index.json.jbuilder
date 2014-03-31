json.array!(@magazine_page_layouts) do |magazine_page_layout|
  json.extract! magazine_page_layout, :id, :name, :description, :preview_file, :template_file
  json.url magazine_page_layout_url(magazine_page_layout, format: :json)
end
