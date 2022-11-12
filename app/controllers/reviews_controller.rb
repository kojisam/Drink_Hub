class ReviewsController < ApplicationController
  def create
    @drink = Drink.find(params[:drink_id])
    @review = Review.new(review_params)
    @review.drink = @drink
    if @review.save
      redirect_to drink_path(@drink)
    else
      render "drinks/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
