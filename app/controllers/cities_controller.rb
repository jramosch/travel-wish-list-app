class CitiesController < ApplicationController
  use Rack::Flash

  get '/cities' do
    @cities = City.all
    erb :'cities/index'
  end

  get '/cities/:slug' do
    @city = City.find_by_slug(params[:slug])
    erb :'cities/show'
  end

  post '/cities/:slug' do
    city = City.find_by_slug(params[:slug])
    city.update(name: params["name"])
    flash[:message] = "City name updated."
    redirect to "/cities/#{city.slug}"
  end
end
