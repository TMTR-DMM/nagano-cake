class Customer::CartItemsController < ApplicationController
  def index
    @cart_items = current_customer.cart_items
  end
  
  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    if @cart_item.save
      redirect_to cart_items_path
    else
      render 'index'
    end
  end
  
  def update
    @cart_item = CartItem.find(params[:id])
      if @cart_item.update(cart_item_params)
        redirect_to request.referrer
      else
        render 'index'
      end
  end
  
  def destroy
    @cart_item = CartItem.find(params[:id])
    if @cart_item.destroy
      flash[:alert] = "#{@cart_item.item.name}を削除しました"
      redirect_to request.referrer
    else
      render 'index'
    end
  end
  
  def all_destroy
    current_customer.cart_items.destroy_all
    flash[:alert] = "カートを空にしました"
    redirect_to request.referrer
  end
  
  private
    def cart_item_params
      params.require(:cart_item).permit(:amount, :item_id)
    end
    
    def cart_item_update_params
      params.require(:cart_item).permit(:amount)
    end
end