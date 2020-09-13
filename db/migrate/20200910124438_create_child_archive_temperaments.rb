class CreateChildArchiveTemperaments < ActiveRecord::Migration[5.2]
  def change
    create_table :child_archive_temperaments do |t|

    	t.references :child_archive, index: true
    	t.references :temperament, index: true, foreign_key: true

      t.timestamps
    end
  end
end
