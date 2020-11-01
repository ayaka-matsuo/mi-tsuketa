class ReviewfavoritesController < ApplicationController

  def create
    review = Review.find(params[:review_id])
    reviewfavorite = current_user.reviewfavorites.new(review_id: review.id)
    reviewfavorite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    review = Review.find(params[:review_id])
    reviewfavorite = current_user.reviewfavorites.find_by(review_id: review.id)
    reviewfavorite.destroy
    redirect_back(fallback_location: root_path)
  end


end
