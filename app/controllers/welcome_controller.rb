class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.all
    @categories = Category.all
    @i = Item.find_by_id(46)
    @current_time = Time.now.to_i
    @midnight = Time.now.beginning_of_day.to_i
    @noon = Time.now.middle_of_day.to_i
    @five_pm = Time.now.change(:hour => 17 ).to_i
    @eight_pm = Time.now.change(:hour => 20 ).to_i
  end

end
