class ChildArchive < ApplicationRecord
	attachment :profile_image
	belongs_to :child
	belongs_to :user
end
