class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  has_many :children, dependent: :destroy
  has_many :child_archives, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :toyfavorites, dependent: :destroy
  has_many :liked_toys, through: :toyfavorites, source: :toy
  has_many :reviewfavorites, dependent: :destroy
  has_many :liked_reviews, through: :reviewfavorites, source: :review

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :sex, presence: true
  validates :place, presence: true




end
