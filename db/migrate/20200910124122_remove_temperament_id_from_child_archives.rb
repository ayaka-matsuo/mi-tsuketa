class RemoveTemperamentIdFromChildArchives < ActiveRecord::Migration[5.2]
  def change
    remove_column :child_archives, :temperament_id, :integer
    remove_reference :child_temperaments, :child_archive, index: true
  end
end
