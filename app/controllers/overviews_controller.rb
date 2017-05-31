class OverviewsController < ApplicationController
  def index
    @item = Item.new
    @items = Item.all
  end


  private

  def item_params
     params.require(:item).permit(:name, :reorderLevel, :unit, :pkg,
                                  :description, :quantity, :reorderTime,
                                  :category, :delivered, :pickup, :arrive,
                                  :adjust, :convert, :total, :barcode)
  end

end
