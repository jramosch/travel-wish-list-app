class CreateWishlistAttractions < ActiveRecord::Migration
  def change
    create_table :wishlist_attractions do |t|
      t.integer :wishlist_id
      t.integer :attraction_id
    end
  end
end
