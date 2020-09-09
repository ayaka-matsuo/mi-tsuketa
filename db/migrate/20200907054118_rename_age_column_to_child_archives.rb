class RenameAgeColumnToChildArchives < ActiveRecord::Migration[5.2]
  def change
  	rename_column :child_archives, :age, :age_year
  	add_column :child_archives, :age_month, :integer
  	add_column :child_archives, :user_id, :integer
  end
end
