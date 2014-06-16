class RatingsController < ApplicationController

	skip_before_filter :increment_pageviews

	def create

    rating = Rating.new
    rating.stars = params[:rating][:stars]
    rating.comments = params[:rating][:comments]
    rating.restaurant_id = params[:rating][:restaurant_id]
    rating.user = @current_user
    rating.save

		Rating.create!(rating_params)

		redirect_to "/restaurants/#{rating.restaurant_id}"
  	end

	def rating_params
		params.require(:rating).permit(:stars, :comments)
  	end

end