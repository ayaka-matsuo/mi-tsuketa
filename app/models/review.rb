class Review < ApplicationRecord
	belongs_to :user
  	belongs_to :toy
  	belongs_to :effect

end