class Admin::OrdersController < ApplicationController
  def index
    unless params[:id] == @customer
      @customer = params[:id]
      @orders = Order.where(customer_id: @customer).page(params[:page]).reverse_order.per(10)
    else
      @orders = Order.page(params[:page]).reverse_order.per(10)
    end
  end







  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    # @order_item = OrderItem.new
  end
  
  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    if params[:order][:order_status] == "payment_check"
      @order.order_items.update_all(production_status: 1)
    end
    redirect_to request.referer
  end
  
  private
  
  def order_params
    params.require(:order).permit(:postage, :amount_charged, :payment_method, :postcode, :address, :name, :order_status)
  end
  
end
