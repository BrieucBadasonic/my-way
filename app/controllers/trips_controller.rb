class TripsController < ApplicationController
  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
<<<<<<< HEAD
      redirect_to trip_garden_index_path(@trip)
=======
      redirect_to trip_gardens_path(@trip)
>>>>>>> master
    else
      render 'trips/new'
    end
  end

private
  def trip_params
    params.require(:trip).permit(:final_destination)
  end
end
