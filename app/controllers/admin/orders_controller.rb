class Admin::OrdersController < ApplicationController
  def index
  end







  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end
  
end
