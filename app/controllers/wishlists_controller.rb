class WishlistsController < ApplicationController

  get '/wishlists' do
    erb :'wishlists/index'
  end

  get '/wishlists/edit' do
    erb :'wishlists/edit'
  end

end
