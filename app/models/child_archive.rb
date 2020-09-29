class ChildArchive < ApplicationRecord
	attachment :profile_image
	belongs_to :child
	belongs_to :user
	has_many :child_archive_temperaments, dependent: :destroy
	has_many :temperaments, through: :child_archive_temperaments
	accepts_nested_attributes_for :child_archive_temperaments, allow_destroy: true

	validates :age_year, presence: true, numericality: { only_integer: true }
	validates :age_month, presence: true, numericality: { only_integer: true }
	validates :name, presence: true
	validates :favorite_thing, presence: true
	validates :un_favorite_thing, presence: true
	validates :status, presence: true



	def self.search(search)
	    if search
	       where(['name LIKE ?', "%#{search}%"]) #検索とuseanameの部分一致を表示。
	    else
	       all #全て表示させる
	    end
 	end

 	default_scope -> { order(created_at: :desc) }



end
