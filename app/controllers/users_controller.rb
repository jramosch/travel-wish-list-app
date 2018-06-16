class UsersController < ApplicationController

  get '/users' do
    @users = User.all
    erb :'users/index'
  end

  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    if current_user == @user
      redirect to "/home"
    end
    erb :'users/show'
  end

end
