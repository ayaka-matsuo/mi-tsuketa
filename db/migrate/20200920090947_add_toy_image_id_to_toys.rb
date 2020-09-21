class AddToyImageIdToToys < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :toy_image1_id, :string
    add_column :toys, :toy_image2_id, :string
    add_column :toys, :toy_image3_id, :string
    add_column :toys, :toy_image4_id, :string
    remove_column :toys, :toy_image_id, :string

  end
end
