class UserController < ApplicationController
  def show
    @user = current_user
    @drinks = current_user.drinks
  end

  def dashboard
    @user = current_user
    @orders = current_user.orders
  end
end
