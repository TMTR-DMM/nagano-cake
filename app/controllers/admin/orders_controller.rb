class Admin::OrdersController < ApplicationController
  def index
    # @orders = Order.page(params[:page]).reverse_order.per(10)
    if params[:order_sort] == "0"
     @customer = Customer.find(params[:customer_id])
     @orders = @customer.orders.page(params[:page]).reverse_order.per(10)
    elsif params[:order_sort] == "1"
     @orders = Order.page(params[:page]).reverse_order.per(10)
    end
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
