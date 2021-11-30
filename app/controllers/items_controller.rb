class ItemsController < ApplicationController
  
    def index
    @random_number= rand(10000)
    @user = User.all.sample
    @item_array = Item.all
    @event = Item.all
  end
  
  def show
     @item = Item.find(params[:id])
     @item_title = @item.title
     @item_description = @item.description
     @item_price = @item.price
     @item_img = @item.image_url
  end
end
