class GardensController < ApplicationController
  def show
    if params[:trip].present?
      @trip = Trip.find(params[:trip])
      @segment = Segment.new

    end
    @garden = Garden.find(params[:id])
    @facilities = @garden.facilities
  end


end
