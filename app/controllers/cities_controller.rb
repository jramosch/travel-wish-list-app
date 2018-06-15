class CitiesController < ApplicationController

  get '/cities' do
    @cities = City.all
    erb :'cities/index'
  end

  get '/cities/:slug' do
    erb :'cities/show'
  end
end
