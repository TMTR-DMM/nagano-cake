class Customer::OrdersController < ApplicationController
  before_action :authenticate_customer!
  
  def new
    @order = Order.new
    @deliveries = current_customer.deliveries
  end
  
  def check
    @cart_items = current_customer.cart_items
    @order = Order.new(order_params)
    @order.payment_method = params[:order][:payment_method]
    @customer = current_customer
    @address_select = params[:address_select]
    
    if @address_select == "1"  
      @order.postcode = @customer.postcode
      @order.address = @customer.address
      @order.name = @customer.fullname
      
    elsif @address_select == "2"  
      # @sta = params[:order][:order_address].to_i  
      @order = Delivery.find(params[:id])  
      @order.postcode = @order.postcode  
      @order.address = @order.address  
      @order.name = @order.name
    
    elsif @address_select == "3"  
      @order.postcode = params[:order][:postcode]  
      @order.address = params[:order][:address]  
    end  
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
    params.require(:order).permit(:postage, :amount_charged, :payment_method, :postcode, :address, :name)
  end
end
