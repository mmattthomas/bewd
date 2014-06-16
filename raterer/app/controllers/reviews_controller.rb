class ReviewsController < ApplicationController
  
  def index
    @rate_values = { "1" => 1, "2" => 2, "3" => 3, "4" =>4, "5" => 5 }
    @reviews = Review.all
  end
  
  def add
    new_review = Review.new
    new_review.rating = params[:review][:rating]
    new_review.comments = params[:review][:comments]
    new_review.save!
    
    redirect_to '/'
  end
  
end