class Customer::ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page]).reverse_order.per(8)
  end

  def show
    @item = Item.find(params[:id])
  end
end
