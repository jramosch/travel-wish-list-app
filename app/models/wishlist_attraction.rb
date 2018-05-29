class WishlistAttraction < ActiveRecord::Base
  belongs_to :wishlist
  belongs_to :attraction
end
