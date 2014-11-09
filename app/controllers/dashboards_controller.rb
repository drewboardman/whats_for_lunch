class DashboardsController < ApplicationController
  before_filter :check_logged_in_user

  def last_place_id
    Visit.where(user_id: current_user.id).order('last_visit DESC').first.restaurant_id
  end

  def last_place_name(rest_id)
    Restaurant.where(id: rest_id).name
  end

  def show
    @restaurant = Restaurant.new
    @restaurants = Restaurant.all
    @rest_id = self.last_place_id
    @rest_name = last_place_name(4)
  end
end
