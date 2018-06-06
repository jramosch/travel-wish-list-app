class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "my_app_secret"
  end

  get '/' do
    if logged_in
      redirect to "/home"
    else
      erb :index
    end
  end

  get '/home' do
    if logged_in
      @user = current_user
      erb :home
    else
      redirect to "/"
    end
  end

  get '/signup' do
    if logged_in
      redirect to "/users/#{current_user.slug}"
    else
      erb :'users/signup'
    end
  end

  post '/signup' do
    params.delete(:captures) if params.key?(:captures)
    if !params.any? { |k,v| v.empty? }
      user = User.create(username: params[:username], email: params[:email], password: params[:password])
      new_wishlist = Wishlist.create(name: "#{user.username}'s Wishlist")
      user.wishlist = new_wishlist
      new_wishlist[:user_id] = user.id
      binding.pry
      session[:user_id] = user.id
      redirect to "/users/#{user.slug}"
    else
      redirect to "/signup"
    end
  end

  get '/login' do
    if logged_in
      redirect to "/home"
    else
      erb :'users/login'
    end
  end

  post '/login' do
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to "/home"
    else
      redirect to "/login"
    end
  end

  get '/logout' do
    session.clear
  end

  helpers do
    def current_user
      User.find(session[:user_id])
    end

    def logged_in
      !!User.find_by(id: session[:user_id])
    end
  end
end
