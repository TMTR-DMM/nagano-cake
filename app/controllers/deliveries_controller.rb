class DeliveriesController < ApplicationController
  
  def index
    @delivery = Delivery.new
    @deliveries = Dlivery.all
  end

  def creat
    @delivery = Delivery.new(delivery_params)
  end

  def edit
  end
  
  def destroy
  end

  def update
  end
  
  private
  
  def delivery_params
    params.require(:delivery).permit(:postcode, :adress, :name)
  end
  
end
