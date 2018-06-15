class AttractionsController < ApplicationController

  get '/attractions' do
    @attractions = Attraction.all
    erb :'attractions/index'
  end

  get '/attractions/new' do
    erb :'attractions/create'
  end

  post '/attractions' do
    attraction = Attraction.create(params["attraction"])
    attraction.update(user_id: current_user.id)
    if !params["city"]["name"].empty?
      new_city = City.create(name: params["city"]["name"], user_id: current_user.id)
      attraction.update(city_id: new_city.id)
    end
    redirect to "/attractions/#{attraction.slug}"
  end

  get '/attractions/:slug' do
    @attraction = Attraction.find_by_slug(params[:slug])
    if logged_in
      @current_user = current_user
    end
    erb :'attractions/show'
  end

  post '/attractions/:slug' do
    attraction = Attraction.find_by_slug(params[:slug])
    attraction.update(params["attraction"])
    redirect to "/attractions/#{attraction.slug}"
  end

  get '/attractions/:slug/edit' do
    @attraction = Attraction.find_by_slug(params[:slug])
    erb :'attractions/edit'
  end

  delete '/attractions/:slug/delete' do
    attraction = Attraction.find_by_slug(params[:slug])
    attraction.delete
    redirect to "/home"
  end

end
