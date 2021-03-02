class GardensController < ApplicationController
  def index
    @gardens = Garden.all
    trip = Trip.find(params[:id])
    @latitude = trip.latitude
    @longitude = trip.longitude
  end
end
