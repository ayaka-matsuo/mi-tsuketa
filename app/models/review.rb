class Review < ApplicationRecord
	belongs_to :user
  	belongs_to :toy
  	belongs_to :effect
  	belongs_to :child
  	has_many :reviewfavorites, dependent: :destroy

	def reviewfavorited_by?(user)
    reviewfavorites.where(user_id: user.id).exists?
  	end


  	validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

  default_scope -> { order(created_at: :desc) }

end