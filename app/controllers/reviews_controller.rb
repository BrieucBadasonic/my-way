class ReviewsController < ApplicationController

	def destroy
    @review = Review.find(params[:id])
    @reviews.destroy
	end
end 