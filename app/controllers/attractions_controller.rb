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
    if !params["city"]["name"].empty?
      new_city = City.create(name: params["city"]["name"], user_id: "#{current_user.id}")
      attraction.update(city_id: "#{new_city.id}")
    end
    redirect to "/attractions/#{attraction.id}"
  end

  get '/attractions/:id' do
    @attraction = Attraction.find(params[:id])
    @current_user = current_user
    erb :'attractions/show'
  end

  post '/attractions/:id' do
    attraction = Attraction.find(params[:id])
    attraction.update(params["attraction"])
    redirect to "/attractions/#{attraction.id}"
  end

  get '/attractions/:id/edit' do
    @attraction = Attraction.find(params[:id])
    erb :'attractions/edit'
  end

  delete '/attractions/:id/delete' do
    attraction = Attraction.find(params[:id])
    attraction.delete
    redirect to "/home"
  end

end
