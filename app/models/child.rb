class Child < ApplicationRecord

belongs_to :user
attachment :profile_image
has_many :child_archives, dependent: :destroy
accepts_nested_attributes_for :child_archives

end
