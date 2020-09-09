class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :user_id
      t.integer :sex
      t.integer :age
      t.integer :temperament
      t.boolean :environment
      t.string :name
      t.text :favorite_thing
      t.text :un_favorite_thing
      t.text :status
      t.integer :profile_image_id
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
