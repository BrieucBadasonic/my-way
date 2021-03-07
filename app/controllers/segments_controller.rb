class SegmentsController < ApplicationController
  def new
  end

  def create
    @segment = Segment.new(segment_params)
    @trip = Trip.find(params[:trip_id])
    @segment.trip = @trip
    if @segment.save
      redirect_to trip_segment_path(@trip, @segment)
    else
      render 'trips/show'
    end
  end

  def show
    @segment = Segment.find(params[:id])
    @trip = @segment.trip
    @garden = @segment.garden
    @destination = {
                    lat: @garden.latitude,
                    lng: @garden.longitude,
                    name: @garden.name,
                    description: @garden.description,
                    facility: @garden.facilities.all
                   }
    # @origin = {
    #            lat: @trip.start_location_latitude,
    #            lng: @trip.start_location_longitude
    #           }
    if Segment.where(trip_id: params[:trip_id]).count == 1
      @origin = {
                  lat: @trip.start_location_latitude,
                  lng: @trip.start_location_longitude
                 }
    else
      two_last_garden = Segment.where(trip_id: params[:trip_id]).last(2)
      @last_garden = two_last_garden[0].garden
      @origin = {
                  lat: @last_garden.latitude,
                  lng: @last_garden.longitude
                }
    end
  end

  def update
  end

  private

  def segment_params
    params.require(:segment).permit(:destination, :garden_id)
  end
end
