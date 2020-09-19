class CreateReviewfavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :reviewfavorites do |t|
      t.integer :user_id
      t.integer :review_id

      t.timestamps
    end
  end
end
