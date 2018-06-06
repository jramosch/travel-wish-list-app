class WishlistsController < ApplicationController

  get '/wishlists' do
    erb :'wishlists/index'
  end



  get '/wishlists/:id/edit' do
    @wishlist = Wishlist.find(params[:id])
    if logged_in && current_user.id == @wishlist.user_id
      erb :'wishlists/edit'
    else
      redirect to "/wishlists"
    end
  end

end
