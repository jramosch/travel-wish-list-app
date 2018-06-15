class CitiesController < ApplicationController

  get '/cities' do
    erb :'cities/index'
  end

  get '/cities/:slug' do
    erb :'cities/show'
  end
end
