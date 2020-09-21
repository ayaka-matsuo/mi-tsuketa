class Toy < ApplicationRecord
	attachment :toy1_image
	attachment :toy2_image
	attachment :toy3_image
	attachment :toy4_image
	belongs_to :genre
	has_many :reviews, dependent: :destroy
	has_many :toyfavorites, dependent: :destroy

	def toyfavorited_by?(user)
    toyfavorites.where(user_id: user.id).exists?
  	end


	def self.search(search)
	    if search
	       where(['name LIKE ? OR manufacturer LIKE ? OR material LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
	    else
	       all #全て表示させる
	    end
 	end

end
