class JoinTableItemCartController < ApplicationController
  def destroy
    @relation = Cart.findBy(user: User.last).items
    puts "###################################################"
    puts @relations
  end

  def create
    @relation = JoinTableItemCart.create(cart_id: Cart.find_by(user_id: current_user.id).id, item_id: Item.find(params[:item_id].to_i).id)
    puts "################"
    puts @relation
    puts "relation établie! :)"
  end
  
end
