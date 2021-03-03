class GardensController < ApplicationController
  def index
    @gardens = Garden.all
    @trip = Trip.find(params[:trip_id])

    @markers = @gardens.geocoded.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude
      }
    end
  end
end
