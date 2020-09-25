class AddAgeToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :age_year, :integer
    add_column :reviews, :age_month, :integer
  end
end
