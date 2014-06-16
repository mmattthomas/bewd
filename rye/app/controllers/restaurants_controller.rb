class RestaurantsController < ApplicationController
	
	def index
		@restaurants = Restaurant.all()
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@ratings = @restaurant.ratings

		#the SQL way
		#@ratings = Rating.where(restaurant_id: params[:id])

	end

end

