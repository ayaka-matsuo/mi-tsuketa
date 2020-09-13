class Temperament < ApplicationRecord
	has_many :child_temperaments
	has_many :children, through: :child_temperaments
	has_many :child_archives, through: :child_archive_temperaments
end
