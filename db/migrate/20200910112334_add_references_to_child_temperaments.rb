class AddReferencesToChildTemperaments < ActiveRecord::Migration[5.2]
  def change
  	add_reference :child_temperaments, :child_archive, index: true
  end
end
