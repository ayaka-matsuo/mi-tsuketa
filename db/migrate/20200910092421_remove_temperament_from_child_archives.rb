class RemoveTemperamentFromChildArchives < ActiveRecord::Migration[5.2]
  def change
    remove_column :child_archives, :temperament, :integer
  end
end
