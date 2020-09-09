class ChangeDataProfileImageIdToChildren < ActiveRecord::Migration[5.2]
  def change
  	change_column :children, :profile_image_id, :string
  	change_column :toys, :toy_image_id, :string
  end
end
