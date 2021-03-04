class UsersController < ApplicationController
  def index
    @user = current_user
    @trips = Trip.where(user: current_user)
  end
end
