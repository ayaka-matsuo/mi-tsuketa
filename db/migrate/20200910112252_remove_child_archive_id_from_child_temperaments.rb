class RemoveChildArchiveIdFromChildTemperaments < ActiveRecord::Migration[5.2]
  def change
    remove_column :child_temperaments, :child_archive_id, :integer
  end
end
