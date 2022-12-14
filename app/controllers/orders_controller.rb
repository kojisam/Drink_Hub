class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
    # total_quantity = @orders.map{_1.quantity}.sum
    # drink_price = @orders.map{_1.drink.price}
    # @orders_total = total_quantity*drink_price
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
      redirect_to order_path(@order)
    else
       @order = Order.new
       render 'orders/show', status: :unprocessable_entity
    end

    # def total
    #   @total = total_quantity*price.to_i
    # end
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :drink_id)
  end


end
