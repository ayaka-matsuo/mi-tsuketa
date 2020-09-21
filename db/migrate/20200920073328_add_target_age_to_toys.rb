class AddTargetAgeToToys < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :target_yearage, :integer
    add_column :toys, :target_monthage, :integer
    remove_column :toys, :target_age, :integer
  end
end
