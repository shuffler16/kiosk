class CreateMagazinePages < ActiveRecord::Migration
  def change
    create_table :magazine_pages do |t|
      t.integer :page
      t.references :magazine, index: true
      t.references :page_layout, index: true

      t.timestamps
    end
  end
end
