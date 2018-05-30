class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure do
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/login' do
    erb :'users/login'
  end

  get '/signup' do
    erb :'users/signup'
  end
end
