class RestaurantsController < ApplicationController
  before_filter :check_logged_in_user, except: [:index, :show]
  
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_parameters)
    @restaurant.save
    redirect_to dashboard_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end

private

  def restaurant_parameters
    params.require(:restaurant).permit(:name, :address)
  end

end
