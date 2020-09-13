class CreateChildTemperaments < ActiveRecord::Migration[5.2]
  def change
    create_table :child_temperaments do |t|

    	t.references :child, index: true
    	t.references :temperament, index: true, foreign_key: true

      t.timestamps
    end
  end
end
