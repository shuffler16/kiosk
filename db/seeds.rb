# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# clean layout and insert
MagazinePageLayout.delete_all
MagazinePageLayout.create!(
  name: %{Full page text},
  description: %{Full page text},
  template_file: 'full_page_text.html.erb'
)
MagazinePageLayout.create!(
    name: %{2-column Text},
    description: %{Two-column page text},
    template_file: '2col_page_text.html.erb'
)