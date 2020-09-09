class RemoveEffectFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :effect, :integer
  end
end
