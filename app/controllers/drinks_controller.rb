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
    @drink.save
    redirect_to drink_path(@drink)
  end

  def show
    @drink = Drink.find(params[:id])
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :description , :stock_level, :price)
  end
end
