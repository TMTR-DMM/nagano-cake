class Customer::OrdersController < ApplicationController
  before_action :authenticate_customer!
  
  def new
    @order = Order.new
    @deliveries = current_customer.deliveries
  end
  
  def check
    @cart_items = current_customer.cart_items
    @order = Order.new
    @order.customer_id = current_customer.id
    @order.payment_method = params[:order][:payment_method]
    
    if params[:order][:address_option] == "0" 
      @order.name = current_customer.fullname
      @order.postcode = current_customer.postcode
      @order.address = current_customer.address  
      
    elsif params[:order][:address_option] == "1"  
      @delivery_order = Delivery.find(params[:order][:delivery_id])
      @order.postcode = @delivery_order.postcode  
      @order.address = @delivery_order.address  
      @order.name = @delivery_order.name  
    
    elsif params[:order][:address_option] == "2"  
      @order.postcode = params[:order][:postcode]  
      @order.address = params[:order][:address]
      @order.name = params[:order][:name]
    end  
  end
  
  def create
    @order = current_customer.orders.new(order_params)
    @order.customer_id = current_customer.id
    if @order.save
       @cart_items = current_customer.cart_items
         @cart_items.each do |cart_item|
           @order_items = @order.order_items.new
           @order_items.item_id = cart_item.item.id
           @order_items.order_id = @order.id
           @order_items.purchase_price = cart_item.item.excluding_price
           @order_items.ordered_qty = cart_item.amount
           @order_items.save
         end
       @cart_items.destroy_all
       redirect_to '/orders/thank'
    else
      render 'check'
    end
  end
  
  def index
    @orders = current_customer.orders
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  
  private
  
  def order_params
    params.require(:order).permit(:postage, :amount_charged, :payment_method, :postcode, :address, :name, :order_status)
  end
  
end
