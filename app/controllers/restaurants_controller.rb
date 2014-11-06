class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    restaurant = current_user.restaurants.build(restaurant_parameters)
    restaurant.save
    redirect_to dashboard_path
  end

private

  def restaurant_parameters
    params.require(:restaurant).permit(:name, :address)
  end
end
