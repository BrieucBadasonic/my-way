class TripsController < ApplicationController
  def new
    @trip = Trip.new
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
    @last_segment = Segment.where(trip_id: params[:id]).last
    @segment = Segment.new
    @markers = @gardens.geocoded.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude,
        name: garden.name,
        description: garden.description,
        facility: garden.facilities.all,
        infoWindow: render_to_string(partial: "info_window", locals: { garden: garden }),
        image_url: helpers.asset_url('campingmarker1.svg'),
      }
    end
    @destination = {
                     lat: @trip.final_destination_latitude,
                     lng: @trip.final_destination_longitude
                   }
    if @last_segment.nil?
      @origin = {
                  lat: @trip.start_location_latitude,
                  lng: @trip.start_location_longitude
                 }
    else
      @origin = {
                  lat: @last_segment.garden.latitude,
                  lng: @last_segment.garden.longitude
                }
    end

  end

  private

  def trip_params
    params.require(:trip).permit(:final_destination, :start_location_latitude, :start_location_longitude)
  end
end

