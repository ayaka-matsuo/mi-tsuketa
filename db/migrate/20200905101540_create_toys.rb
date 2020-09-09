class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.integer :genre_id
      t.string :name
      t.text :manufacturer
      t.integer :toy_image_id
      t.text :toy_introduction
      t.integer :price

      t.timestamps
    end
  end
end
