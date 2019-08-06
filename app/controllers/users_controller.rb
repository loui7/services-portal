class UsersController < ApplicationController
  def add_review
    user = User.find(params[:user_id])
    ratings_total = user.ratings_avg * user.ratings_qty
    user.ratings_qty += 1
    user.ratings_avg = (ratings_total + params[:rating].to_i) / user.ratings_qty
    user.save
    flash[:alert] = "Review successfully submitted."
    redirect_to my_services_path
  end
end