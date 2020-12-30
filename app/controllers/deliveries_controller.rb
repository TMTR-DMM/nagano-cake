class DeliveriesController < ApplicationController
  # before_action :authenticate_customer!

  
  def index
    @delivery = Delivery.new
    @deliveries = current_customer.deliveries

  end

  def creat
    @delivery = Delivery.new(delivery_params)
    @delivery.customer_id = current_customer.id
    if @delivery.save
      redirect_to request.referrer || root_path
    else
      render 'index'
    end
  end

  def edit
  end

  def update
  end
  
  def destroy
  end
  
  private
  
  def delivery_params
    params.require(:delivery).permit(:postcode, :address, :name)
  end
  
end
