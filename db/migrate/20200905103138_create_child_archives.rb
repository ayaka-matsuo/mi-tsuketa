class CreateChildArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :child_archives do |t|
      t.integer :child_id
      t.integer :age
      t.integer :temperament
      t.boolean :environment
      t.text :favorite_thing
      t.text :un_favorite_thing
      t.text :status
      t.integer :profile_image_id
      t.text :memo
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
