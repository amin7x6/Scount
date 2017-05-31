class ScansController < ApplicationController

  def index
  end

  def new
    @item = Item.new
  end

  def barcode
    @item = Item.find_by_barcode(params[:barcode])

    if @item.present?
      if params[:commit] == 'Delete' && @item.quantity > 0
        @item.decrement(:quantity, 1)
        @item.save
        ItemsMailer.notify_item_owner(@item).deliver_now
        redirect_to @item
      elsif params[:commit] == 'Submit'
        @item.increment(:quantity, 1)
        @item.save
        ItemsMailer.notify_item_owner(@item).deliver_now
        redirect_to @item
      end
    else
      @item = current_user.items.create(item_params)
      redirect_to edit_item_path(@item)
    end
  end

  def item_params
     params.permit(:barcode)
  end


end
