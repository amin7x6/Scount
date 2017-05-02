class ItemsController < ApplicationController

  before_action :find_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @item = Item.new
    @items = Item.all.order("created_at DESC")
    @category = Category.new
    @categories = Category.all
  end

  def new
    @item =Item.new
    @category = Category.new
  end

  def create
    @category = Category.new
    @item = Item.new item_params
    @item.user = current_user

    if @item && @category.save && @item.quantity < 20
      ItemsMailer.notify_item_owner(@item).deliver_now
      redirect_to items_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    redirect_to root_path, alert: "access denied" unless can? :edit, @item
  end

  def update
    redirect_to root_path, alert: "access denied" unless can? :update, @item
    if @item.update item_params
      redirect_to @item, notice: "Item Created"
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path, alert: "access denied" unless can? :destroy, @item
    @item.destroy
    redirect_to items_path, notice: "Item deleted"
  end

  private

  def find_item
     @item = Item.find params[:id]
  end

  def item_params
     params.require(:item).permit(:name, :sku, :unit, :pkg, :description, :quantity, :notes, :category)
  end



end
