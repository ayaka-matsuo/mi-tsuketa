class RenameToyImageIdColumnToToys < ActiveRecord::Migration[5.2]
  def change
  	rename_column :toys, :toy_image1_id, :toy1_image_id
    rename_column :toys, :toy_image2_id, :toy2_image_id
    rename_column :toys, :toy_image3_id, :toy3_image_id
    rename_column :toys, :toy_image4_id, :toy4_image_id
  end
end
