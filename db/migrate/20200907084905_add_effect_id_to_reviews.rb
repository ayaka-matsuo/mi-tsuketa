class AddEffectIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :effect_id, :integer
  end
end
