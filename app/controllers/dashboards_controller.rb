class DashboardsController < ApplicationController
  def show
    @restaurant = Restaurant.new
    @restaurants = current_user.restaurants
  end
end
