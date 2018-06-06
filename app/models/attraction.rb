class Attraction < ActiveRecord::Base
  extend Slugify::ClassMethods
  include Slugify::InstanceMethods
  
  belongs_to :user
  belongs_to :city
  has_many :wishlist_attractions
  has_many :wishlists, through: :wishlist_attractions
end
