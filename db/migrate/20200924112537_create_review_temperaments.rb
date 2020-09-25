class CreateReviewTemperaments < ActiveRecord::Migration[5.2]
  def change
    create_table :review_temperaments do |t|

    	t.references :review, index: true
    	t.references :temperament, index: true, foreign_key: true

      t.timestamps
    end
  end
end
