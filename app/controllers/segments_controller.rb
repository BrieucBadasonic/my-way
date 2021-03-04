class SegmentsController < ApplicationController
  def new
  end

  def create
    @segment = Segment.new(segment_params)
    @trip = Trip.find(params[:trip_id])
    @segment.trip = @trip
    @markers = [lat: 52.506872, lng: 13.3913749]
    if @segment.save
      redirect_to segment_path(@segment)
    else
      render 'trips/show'
    end
  end

  def show
    @segment = Segment.find(params[:id])
    @trip = @segment.trip
    @garden = @segment.garden
    # @markers = [lat: @garden.latitude, lng: @garden.longitude]

    @markers =
      [{
        lat: @garden.latitude,
        lng: @garden.longitude,
        name: @garden.name,
        description: @garden.description,
        facility: @garden.facilities.all
      },
      {
        lat: 52.506872,
        lng: 13.3913749,
      }]
  end

  def update
  end

  private

  def segment_params
    params.require(:segment).permit(:destination, :garden_id)
  end
end
