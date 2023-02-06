class PlacesController < ApplicationController
  def index
    places = Trip.find_by(id: params[:id]).places
    render json: places.as_json
  end

  
end
