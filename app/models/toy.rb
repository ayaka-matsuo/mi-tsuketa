class Toy < ApplicationRecord
	attachment :toy_image_id
	belongs_to :genre
	has_many :reviews, dependent: :destroy
end
