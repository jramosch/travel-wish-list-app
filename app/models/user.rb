class User < ActiveRecord::Base
  extend Slugify::ClassMethods
  include Slugify::UserInstanceMethods

  has_secure_password
  has_one :wishlist
  has_many :attractions
  has_many :cities
end
