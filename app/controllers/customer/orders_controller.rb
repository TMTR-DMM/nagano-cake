class Customer::OrdersController < ApplicationController
  before_action :authenticate_customer!
  
  def new
    @order = Order.new
    @deliveries = current_customer.deliveries
  end
  
  def check
    @cart_items = current_customer.cart_items
    @order = Order.new
    @order.payment_method = params[:order][:payment_method]
    
    if params[:order][:address_option] == "ご自身の住所"  
      @order.postcode = current_customer.postcode
      @order.address = current_customer.address  
      
    elsif params[:order][:address] == "登録済み住所から選択"  
      # @sta = params[:order][:order_address].to_i  
      @order = Delivery.find(params[:id])  
      @order.postcode = @order.postcode  
      @order.address = @order.address  
      @order.name = @order.name  
    
    elsif params[:order][:address] == "新しい登録先"  
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
