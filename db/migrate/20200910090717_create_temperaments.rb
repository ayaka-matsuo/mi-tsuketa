class CreateTemperaments < ActiveRecord::Migration[5.2]
  def change
    create_table :temperaments do |t|
      t.string :name
      t.text :explanation

      t.timestamps
    end
  end
end
