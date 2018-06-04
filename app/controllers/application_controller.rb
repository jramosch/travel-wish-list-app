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
    erb :'users/signup'
  end

  post '/signup' do
    if !params.any? { |k,v| v.empty? }
      user = User.create(username: params[:username], email: params[:email], password: params[:password])
    else
      redirect to "/signup"
    end
  end

  get '/login' do
    erb :'users/login'
  end
end
