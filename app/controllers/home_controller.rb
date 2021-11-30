class HomeController < ApplicationController 
  def index
    @items = Item.all
     puts params
  end
end
