class Child < ApplicationRecord

belongs_to :user
attachment :profile_image
has_many :child_archives, dependent: :destroy
accepts_nested_attributes_for :child_archives
has_many :child_temperaments, dependent: :destroy
has_many :temperaments, through: :child_temperaments
accepts_nested_attributes_for :child_temperaments, allow_destroy: true
has_many :reviews, dependent: :destroy

end
