class Admin::ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @categories = Category.all
  end
  
  def create
    @categories = Category.all
    @item = Item.new(item_params)
    @item.category_id = params[:item][:category_id]
    @item.save
    redirect_to admin_items_path
  end

  def edit
    @categories = Category.all
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item)
  end
  
  private
    def item_params
      params.require(:item).permit(:name, :caption, :excluding_price, :image, :is_deleted)
    end
end
