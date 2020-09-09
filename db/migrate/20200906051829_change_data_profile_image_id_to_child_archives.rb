class ChangeDataProfileImageIdToChildArchives < ActiveRecord::Migration[5.2]
  def change
  	change_column :child_archives, :profile_image_id, :string
  end
end
