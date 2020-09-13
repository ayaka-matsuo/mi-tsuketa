class AddChildIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :child_id, :integer
  end
end
