class JoinTableItemCartController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def destroy
    cart_id = Cart.find_by(user_id: current_user.id).id
  
    JoinTableItemCart.where(cart_id: cart_id, item_id: params[:item_id]).destroy_all
    redirect_to cart_path

  end

  def create
    @relation = JoinTableItemCart.create(cart_id: Cart.find_by(user_id: current_user.id).id, item_id: Item.find(params[:item_id].to_i).id)
   
    
    
  end
  
end
