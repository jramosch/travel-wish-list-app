require_relative 'concerns/slugify'

class Attraction < ActiveRecord::Base
  include Slugify::NameMethods
  extend Slugify::ClassMethods
  
  belongs_to :user
  belongs_to :city
  has_many :wishlist_attractions
  has_many :wishlists, through: :wishlist_attractions
end
