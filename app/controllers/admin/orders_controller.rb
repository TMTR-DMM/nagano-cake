class Admin::OrdersController < ApplicationController
  def index
  end







  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    @order_item = OrderItem.new
  end
  
  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to request.referer
  end
  
  private
  
  def order_params
    params.require(:order).permit(:postage, :amount_charged, :payment_method, :postcode, :address, :name, :order_status)
  end
  
end
