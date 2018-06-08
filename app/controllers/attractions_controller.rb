class AttractionsController < ApplicationController

  get '/attractions/:id' do
    @attraction = Attraction.find(params[:id])
    erb :'attractions/show'
  end

end
