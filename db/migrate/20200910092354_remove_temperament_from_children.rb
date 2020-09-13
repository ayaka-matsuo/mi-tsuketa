class RemoveTemperamentFromChildren < ActiveRecord::Migration[5.2]
  def change
    remove_column :children, :temperament, :integer
  end
end
