class TripsController < ApplicationController
  def index
    trips = Trip.where(user_id: current_user.id)
    render json: trips.as_json
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
      render json: trip.as_json
    else
      render json: {errors: "Need to login"}
    end
  end
end
