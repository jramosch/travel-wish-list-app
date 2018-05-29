class Wishlist < ActiveRecord::Base
  belongs_to :user
  has_many :wishlist_attractions
  has_many :attractions, through: :wishlist_attractions
end
