require_relative 'concerns/slugify'

class City < ActiveRecord::Base
  include Slugify::InstanceMethods
  extend Slugify::ClassMethods

  belongs_to :user
  has_many :attractions
end
