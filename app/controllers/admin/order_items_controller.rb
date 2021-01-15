class Admin::OrderItemsController < ApplicationController
  def update
    @order = Order.find(params[:order_id])
    @order_item = OrderItem.find(params[:id])
    @order_item.update(order_item_params)
    if params[:order_item][:production_status] == "in_production"
      @order.making!
    elsif @order.order_items.where(params[:order_item][:production_status]) == "production_completed"
      @order.before_delivery!
    end
    redirect_to request.referer
  end
  
  private
  def order_item_params
    params.require(:order_item).permit(:production_status)
  end
end
