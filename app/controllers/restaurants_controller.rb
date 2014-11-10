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

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_parameters)
    flash.notice = "'#{@restaurant.name}' Updated!"
    redirect_to restaurant_path(@restaurant.id)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

private

  def restaurant_parameters
    params.require(:restaurant).permit(:name, :address)
  end

end
