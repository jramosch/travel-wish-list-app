class User < ActiveRecord::Base
  include Slugify::InstanceMethods
  extend Slugify::ClassMethods

  has_secure_password
  has_one :wishlist
  has_many :attractions
  has_many :cities
end
