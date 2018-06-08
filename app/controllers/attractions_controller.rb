class AttractionsController < ApplicationController

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

end
