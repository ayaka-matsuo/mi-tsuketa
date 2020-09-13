class AddTemperamentIdToChildArchives < ActiveRecord::Migration[5.2]
  def change
    add_column :child_archives, :temperament_id, :integer
  end
end
