class Effect < ApplicationRecord
	has_many :reviews, dependent: :destroy
end
