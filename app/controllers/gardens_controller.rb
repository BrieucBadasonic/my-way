class GardensController < ApplicationController
  def index
    @gardens = Garden.all
    @trip = Trip.find(params[:trip_id])
    #@segments = Garden.find(:segment_id)

    @latitude = @trip.latitude
    @longitude = @trip.longitude
  end
end
