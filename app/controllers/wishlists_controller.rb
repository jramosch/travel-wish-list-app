class WishlistsController < ApplicationController

  get '/wishlists' do
    erb :'wishlists/index'
  end

  get '/wishlists/:id' do
    @wishlist = Wishlist.find(params[:id])
    erb :'wishlists/show'
  end

  get '/wishlists/:id/edit' do
    @wishlist = Wishlist.find(params[:id])
    if logged_in && current_user.id == @wishlist.user_id
      erb :'wishlists/edit'
    else
      redirect to "/wishlists"
    end
  end

  post '/wishlists/:id' do
    wishlist = Wishlist.find(params[:id])
    wishlist.update(params["wishlist"])
    if !params["attraction"]["name"].empty?
      new_attraction = Attraction.create(name: params["attraction"]["name"], description: params["attraction"]["description"], user_id: "#{current_user.id}")
      if !params["city"]["name"].empty?
        new_city = City.create(name: params["city"]["name"], user_id: "#{current_user.id}")
        new_attraction.update(city_id: "#{new_city.id}")
      else
        new_attraction.update(city_id: params["attraction"]["city_id"])
      end
      wishlist.attractions << new_attraction
    end
    flash[:message] = "wishlist updated"
    redirect to "/home"
  end

end
