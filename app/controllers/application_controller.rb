class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure do
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    
  end

  get '/login' do
    erb :'users/login'
  end
end
