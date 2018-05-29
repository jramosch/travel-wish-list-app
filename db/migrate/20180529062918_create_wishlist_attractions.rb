class CreateWishlistAttractions < ActiveRecord::Migration
  def change
    create_table :wishlist_attractions do |t|
      t.integer :wishlist_id
      t.tnteger :attraction_id
    end
  end
end
