class TripsController < ApplicationController
  def new
    @trip = Trip.new
    @markers = [lat: 52.506872, lng: 13.3913749]
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render 'trips/new'
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @gardens = Garden.near(@trip.final_destination, 1000)

    @markers = @gardens.geocoded.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude,
        description: garden.description,
        infoWindow: render_to_string(partial: "info_window", locals: { garden: garden })
      }
    end
  end

private
  def trip_params
    params.require(:trip).permit(:final_destination)
  end
end
