class DashboardsController < ApplicationController
  def show
    @restaurant = Restaurant.new
    @restaurants = Restaurant.all
  end
end
