class RatingsController < ApplicationController
  before_filter :check_logged_in_user

  def create
    rating = Rating.where(user_id: rating_params[:user_id], restaurant_id: rating_params[:restaurant_id]).first
      if rating
        rating.update_attributes(score: rating_params[:score])
      else
        rating = Rating.new(rating_params)
        rating.save
      end
    redirect_to request.referer
  end

private

  def rating_params
    params.require(:rating).permit(:score, :user_id, :restaurant_id)
  end
end
