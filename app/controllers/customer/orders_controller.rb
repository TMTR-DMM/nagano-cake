class Customer::OrdersController < ApplicationController
  before_action :authenticate_customer!
  
  def new
    @order = Order.new
    @deliveries = current_customer.deliveries
  end
  
  def check
    @order = Order.find(params[:id])
  end
  
  def create
    @order = Order.new(order_params)
  end
  
  def index
  end

  def show
  end
  
  
  private
  
  def order_params
    params.require(:order).permit(:postage, :amount_charged, :payment_method, :postcode, :address, :order_status, :name)
  end
end
