class WishlistsController < ApplicationController

  get '/wishlists' do
    erb :'wishlists/index'
  end

  post '/wishlists/:id' do
    wishlist = Wishlist.find(params[:id])
    wishlist.update(params["wishlist"])
    if !params["attraction"]["name"].empty?
      new_attraction = Attraction.create(name: params["attraction"]["name"])
      wishlist.attractions << new_attraction
      if !params["city"]["name"].empty?
        new_attraction.city = City.create(name: params["city"]["name"])
      end
    end
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
