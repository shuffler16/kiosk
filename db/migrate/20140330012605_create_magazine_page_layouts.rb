class CreateMagazinePageLayouts < ActiveRecord::Migration
  def change
    create_table :magazine_page_layouts do |t|
      t.string :name
      t.text :description
      t.string :preview_file
      t.string :template_file

      t.timestamps
    end
  end
end
