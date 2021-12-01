class JoinTableItemCartController < ApplicationController
  def destroy
    cart_id = Cart.find_by(user_id: current_user.id).id
    puts "Cart_id ="
    puts cart_id
    JoinTableItemCart.where(cart_id: cart_id, item_id: params[:item_id]).destroy_all
    redirect_to cart_path

  end

  def create
    @relation = JoinTableItemCart.create(cart_id: Cart.find_by(user_id: current_user.id).id, item_id: Item.find(params[:item_id].to_i).id)
    puts "################"
    puts @relation
    puts "relation établie! :)"
  end
  
end
