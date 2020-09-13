class AddChildArchiveIdToChildTemperaments < ActiveRecord::Migration[5.2]
  def change
    add_column :child_temperaments, :child_archive_id, :integer
  end
end
