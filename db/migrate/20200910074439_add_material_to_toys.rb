class AddMaterialToToys < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :material, :text
    add_column :toys, :depth, :integer
    add_column :toys, :width, :integer
    add_column :toys, :height, :integer
    add_column :toys, :target_age, :integer
  end

end
