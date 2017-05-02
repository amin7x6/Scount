class ItemsMailer < ApplicationMailer
  def notify_item_owner(item)
    @item = item
    @user = @item.user
    mail(to: "amin7x6@gmail.com", subject: "Your Inventory getting Down !") if @user
  end

end
