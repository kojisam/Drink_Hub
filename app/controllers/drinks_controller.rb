class DrinksController < ApplicationController
  def index
    if params[:query].present?
      @drinks = Drink.where(name: params[:query])
    else
      @drinks = Drink.all
    end
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
    @review = Review.new
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :description, :stock_level, :price, :photo)
  end
end
