class Customer::CartItemsController < ApplicationController
  def index
    @cart_items = current_customer.cart_items
    @cart_total = Item.all.sum(:excluding_price)
  end
  
  def update
    @cart_items.update(quantity: params[:quantity].to_i)
    redirect_to current_cart_item
  end
  
  def destroy
    @cart_items.destroy
    flash.now[:alert] = "#{@cart_item.product.name}を削除しました"
    redirect_to current_cart_item
  end
  
  def all_destroy
  end
end
