class GardensController < ApplicationController
  def show
    if params[:trip].present?
      @trip = Trip.find(params[:trip])
      @segment = Segment.new

    end
    @garden = Garden.find(params[:id])
    @facilities = @garden.facilities

    @average_rating = @garden.reviews.average(:rating)
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :description, :address, :tent_capacity, :photo)
  end

end
