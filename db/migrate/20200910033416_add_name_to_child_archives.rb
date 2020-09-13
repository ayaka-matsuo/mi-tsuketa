class AddNameToChildArchives < ActiveRecord::Migration[5.2]
  def change
    add_column :child_archives, :name, :string
  end
end
