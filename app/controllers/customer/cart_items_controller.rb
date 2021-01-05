class Customer::CartItemsController < ApplicationController
  def index
    @cart_item = CartItem.new
    @cart_items = current_customer.items
    @cart_total = Item.all.sum(:excluding_price)
  end
  
  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_item.item_id = params[:amount]
    @cart_item.save
    redirect_to cart_items_path
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
  
  private
    def cart_item_params
      params.require(:cart_item).permit(:amount)
    end
end
