class Customer::DeliveriesController < ApplicationController
  before_action :authenticate_customer!

  
  def index
    @delivery = Delivery.new
    @deliveries = current_customer.deliveries
  end

  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.customer_id = current_customer.id
    if @delivery.save
      flash.now[:notice] = "新規配送先を登録しました"
      redirect_to request.referrer || root_path
    else
      render 'index'
    end
  end

  def edit
    @delivery = Delivery.find(params[:id])
  end

  def update
    delivery = Delivery.find(params[:id])
    if delivery.update(delivery_params)
      flash.now[:success] = "配送先を更新しました"
      redirect_to deliveries_path
    else
      render 'edit'
    end
  end
  
  def destroy
    delivery = Delivery.find(params[:id])
    if delivery.destroy
      flash.now[:alert] = "配送先を削除しました"
      redirect_to request.referrer || root_path
    else
      render 'index'
    end
  end
  
  private
  
  def delivery_params
    params.require(:delivery).permit(:postcode, :address, :name)
  end
  
end
