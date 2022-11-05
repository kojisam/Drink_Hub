class DrinksController < ApplicationController

  def index
    @drinks = Drink.all
  end

  def new
    @drink = Drink.new
  end

  # will come back to create later
  def create
    @drink = Drink.new(drink_params)
    @drink.user = current_user
    if @drink.save!
      redirect_to drinks_path(@drink)
    else
      @drink = Drink.new
      render 'drinks/show', status: :unprocessable_entity
    end
  end

  def show
    @drink = Drink.find(params[:id])
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :description, :stock_level, :price, :photo)
  end
end
