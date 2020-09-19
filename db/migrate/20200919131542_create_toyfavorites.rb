class CreateToyfavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :toyfavorites do |t|
      t.integer :user_id
      t.integer :toy_id

      t.timestamps
    end
  end
end
