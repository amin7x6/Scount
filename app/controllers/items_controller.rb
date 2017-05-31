class ItemsController < ApplicationController

  before_action :find_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  respond_to? :html, :json

  def index
    @item = Item.new
    @items = Item.all.order("created_at DESC")
    @category = Category.new
    @categories = Category.all
  end

  def new
    @item = Item.new
    @category = Category.new
  end

  def create
    @found_item = Item.find_by_barcode(params[:barcode])
    @category = Category.new
    @item = Item.new item_params
    @item.user = current_user

    if @item.save 
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

    respond_to do |format|
      if @item.update_attributes item_params
        format.html { redirect_to(@item, :notice => 'Item was successfully updated.') }
        format.json { respond_with_bip(@item) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@item) }
      end
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
     params.require(:item).permit(:name, :reorderLevel, :unit, :pkg,
                                  :description, :quantity, :reorderTime,
                                  :category, :delivered, :pickup, :arrive,
                                  :adjust, :convert, :total, :barcode, :category_id)
  end




end
