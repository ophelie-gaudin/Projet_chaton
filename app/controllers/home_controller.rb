class HomeController < ApplicationController 
  def index
    @items = Item.all  
    @cart = Cart.find_by(user_id: current_user.id)
    @itemscart = @cart.item
    @iditemcart = @itemscart.map{|x| x.id}
    
  end
end
