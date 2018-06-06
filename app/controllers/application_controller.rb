class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "my_app_secret"
  end

  get '/' do
    erb :index
  end

  get '/signup' do
    if logged_in
      redirect to "/users/#{user.slug}"
    else
      erb :'users/signup'
    end
  end

  post '/signup' do
    params.delete(:captures) if params.key?(:captures)
    if !params.any? { |k,v| v.empty? }
      user = User.create(username: params[:username], email: params[:email], password: params[:password])
      binding.pry
      user.wishlist = Wishlist.create(name: "#{user.username}'s Wishlist'")
      session[:user_id] = user.id
      redirect to "/users/#{user.slug}"
    else
      redirect to "/signup"
    end
  end

  get '/login' do
    erb :'users/login'
  end

  post '/login' do
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to "/users/#{user.slug}"
    else
      redirect to "/login"
    end
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
