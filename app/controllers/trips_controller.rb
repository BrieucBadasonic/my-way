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
    @segment = Segment.new
    @gardens = Garden.near(@trip.final_destination, 1000)
    @wagonlat = 52.506872
    @wagonlng = 13.3913749
    @markers = @gardens.geocoded.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude,
        name: garden.name,
        description: garden.description,
        facility: garden.facilities.all,
        infoWindow: render_to_string(partial: "info_window", locals: { garden: garden }),
        # image_url: helpers.asset_url('campingmarker1.svg'),
      }
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:final_destination)
  end
end

