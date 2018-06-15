class City < ActiveRecord::Base
  include Slugify::NameMethods
  extend Slugify::ClassMethods
  
  belongs_to :user
  has_many :attractions
end
