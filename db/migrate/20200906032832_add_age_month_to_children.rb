class AddAgeMonthToChildren < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :age_month, :integer
  end
end
