class Temperament < ApplicationRecord
	has_many :child_temperaments
	has_many :children, through: :child_temperaments
	has_many :child_archive_temperaments
	has_many :child_archives, through: :child_archive_temperaments
	has_many :review_temperaments
	has_many :reviews, through: :review_temperaments
end
