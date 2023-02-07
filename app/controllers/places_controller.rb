class PlacesController < ApplicationController
  def index
    places = Trip.find_by(id: params[:id]).places
    render json: places.as_json
  end

  def create
    place = Place.new(
      trip_id: params[:trip_id],
      address: params[:address],
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time]
    )
    if place.save
      render json: {message: "Successfully created"}
    else
      render json: { errors: place.errors.full_messages }, status: :bad_request
    end
  end
end
