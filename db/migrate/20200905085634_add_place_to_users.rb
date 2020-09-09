class AddPlaceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :place, :string
  end
end
