class JoinTableItemCartController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def destroy
    cart_id = Cart.find_by(user_id: current_user.id).id
  
    JoinTableItemCart.where(cart_id: cart_id, item_id: params[:item_id]).destroy_all
    #redirect_to cart_path
    @item = Item.find(params[:item_id])

    @cart = Cart.find(params[:id])
    @items = @cart.items
    total = 0
    @items.each do |item|
      total += item.price
    end
    @cart_total = total

    respond_to do |format|
        format.html {redirect_to cart_path(current_user)}
        format.js {}
      end
  end

  def create
    @relation = JoinTableItemCart.create(cart_id: Cart.find_by(user_id: current_user.id).id, item_id: Item.find(params[:item_id].to_i).id)
   
    
    
  end
  
end
