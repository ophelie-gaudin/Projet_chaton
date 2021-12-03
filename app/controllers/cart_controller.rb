class CartController < ApplicationController
  before_action :authenticate_user!

  def show    
     if(Cart.find_by(user_id: current_user.id).id == params[:id].to_i)
      @user = current_user;
      @cart = Cart.find(params[:id]);
      @items = @cart.items    
      total = 0
      @items.each do |item|
        total += item.price
  
      end
      @cart_total = total
    else
      redirect_to root_path
    end

  end
  
end