class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "views")}

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
