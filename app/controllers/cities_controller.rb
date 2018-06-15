class CitiesController < ApplicationController

  get '/cities' do
    @cities = City.all
    erb :'cities/index'
  end

  get '/cities/:slug' do
    @city = City.find_by_slug(params[:slug])
    erb :'cities/show'
  end
end
