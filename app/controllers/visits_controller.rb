class VisitsController < ApplicationController
  before_filter :check_logged_in_user

  def create
    visit = Visit.where(user_id: visit_params[:user_id], restaurant_id: visit_params[:restaurant_id]).first
      if visit
        visit.update_attributes(last_visit: visit_params[:last_visit])
      else
        visit = Visit.new(visit_params)
        visit.save
      end
    redirect_to request.referer
  end

  # def update
  # end

private

  def visit_params
    params.require(:visit).permit(:last_visit, :user_id, :restaurant_id)
  end

end
