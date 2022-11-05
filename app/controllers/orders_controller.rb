class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @drink = Drink.find(params[:drink_id])
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @drink = Drink.find(params[:drink_id])
    @order.drink = @drink
    if @order.save!
      redirect_to orders_path(@order)
    else
       @order = Order.new
       render 'orders/show', status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :drink_id)
  end
end
