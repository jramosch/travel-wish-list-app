class User < ActiveRecord::Base
  has_secure_password
  has_one :wishlist
  has_many :attractions
  has_many :cities
end
