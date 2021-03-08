class ReviewsController < ApplicationController

before_action :find_garden, only: [ :new, :create ]

def new
  @review = Review.new
end

def create
  @review = Review.new(review_params)
  @review.user = current_user
  @review.garden = @garden

  if @review.save
    redirect_to garden_path(@garden, anchor: "review-#{@review.id}")
  else
    render 'garden/show'
  end
end

def destroy
    @review = Review.find(params[:id])
    @reviews.destroy
end

private

def review_params
  params.require(:review).permit(:description, :rating,
    :garden_id)
end

def find_garden
  garden = Garden.find(params[:garden_id])
end

end

