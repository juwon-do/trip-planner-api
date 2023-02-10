class PlacesController < ApplicationController
  def index
    @trips = Trip.where(user_id: current_user.id)
    @places = Place.where(trip_id: @trips.ids)
    
    # render json: places.as_json
    # @places = Place.all
    @places.map { |place| 
      if place.lat.nil? || place.lng.nil?
        results = Geocoder.search("#{place.address}")
        place.lat = results.first.coordinates[0];
        place.lng = results.first.coordinates[1];
        place.save
      end
    }
    render template: "places/index"

  end

  def show

    @place = Place.find_by(id: params[:id])
    if @place.lat.nil? || @place.lng.nil?
      results = Geocoder.search("#{@place.address}")
      @place.lat = results.first.coordinates[0];
      @place.lng = results.first.coordinates[1];
    end
    render template: "places/show"
    # render json: place.as_json
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
