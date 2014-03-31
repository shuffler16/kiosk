class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.references :user, index: true
      t.string :title
      t.string :short_description
      t.text :long_description
      t.string :status
      t.decimal :price

      t.timestamps
    end
  end
end
