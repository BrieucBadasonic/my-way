class ReviewsController < ApplicationController
before_action :find_garden, only: [ :new, :create ]

def new
  @review = Review.new
end

def create
  @review = Review.new(review_params)
  @segment = Segment.find(params[:segment_id])
  @review.segment = @segment
  @review.user = current_user
  @review.garden = @garden

  if @review.save
    redirect_to garden_path(@garden, anchor: "review-#{@review.id}")
  else
    render :new
  end
end

private

def review_params
  params.require(:review).permit(:description, :rating,
    :garden_id, :segment_id)
end

def find_garden
  @garden = Garden.find(params[:garden_id])
end

end
