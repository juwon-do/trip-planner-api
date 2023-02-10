class TripsController < ApplicationController
  def index
    
    @trips = Trip.where(user_id: current_user.id)
    @places = Place.where(trip_id: @trips.ids)
    
    render :json => @trips, include: [:places]
  end

  def create
    if current_user != nil 
      trip = Trip.new(
        user_id: current_user.id,
        title: params[:title],
        image_url: params[:image_url],
        start_time: params[:start_time],
        end_time: params[:end_time]
      )
      if trip.save
        render json: {message: "Successfully created"}
      else
        render json: { errors: trip.errors.full_messages }, status: :bad_request
      end
    else
      render json: {errors: "Need to login"}
    end
  end

  def show
    @trip = Trip.find_by(id: params[:id])
    render template: "trips/show"
  end
end
