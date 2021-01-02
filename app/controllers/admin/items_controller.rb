class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_items_index_path
  end

  def edit
  end
  
  private
    def item_params
      params.require(:item).permit(:name, :caption, :excluding_price, :image_id, :is_deleted)
    end
end
