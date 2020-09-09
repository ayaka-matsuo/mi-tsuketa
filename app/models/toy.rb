class Toy < ApplicationRecord
	attachment :toy_image
	belongs_to :genre
	has_many :reviews, dependent: :destroy

	def self.search(search)
	    if search
	       where(['name LIKE ?', "%#{search}%"]) #検索とuseanameの部分一致を表示。
	    else
	       all #全て表示させる
	    end
 	end

end
