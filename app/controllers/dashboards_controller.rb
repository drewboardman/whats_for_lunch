class DashboardsController < ApplicationController
  before_filter :check_logged_in_user

  def show
    @restaurant = Restaurant.new
    @restaurants = Restaurant.all
  end
end
