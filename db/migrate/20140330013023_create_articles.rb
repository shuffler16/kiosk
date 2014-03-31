class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :magazine_page , index: true
      t.string :page_slot
      t.string :title
      t.text :content
      t.string :source

      t.timestamps
    end
  end
end
