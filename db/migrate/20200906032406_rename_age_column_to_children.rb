class RenameAgeColumnToChildren < ActiveRecord::Migration[5.2]
  def change
  	rename_column :children, :age, :age_year
  end
end
