class AttractionsController < ApplicationController

  get '/attractions/:id' do
    @attraction = Attraction.find(params[:id])
    erb :'attractions/show'
  end

  get '/attractions/:id/edit' do
    @attraction = Attraction.find(params[:id])
    erb :'attractions/edit'
  end

end
