class ChildArchive < ApplicationRecord
	attachment :profile_image_id
	belongs_to :child
	belongs_to :user
end
