class CartController < ApplicationController

  def show
    @user = current_user;
    @cart = Cart.find(params[:id]);
    puts "############################################################################"
    puts current_user
    puts @cart
    puts "############################################################################"
    @items = @cart.items
    
    total = 0
    @items.each do |item|
    total += item.price
    end

    @cart_total = total

  end

  
end