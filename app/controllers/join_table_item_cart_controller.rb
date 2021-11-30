class JoinTableItemCartController < ApplicationController
  def destroy
    @relation = Cart.findBy(user: User.last).items
    puts "###################################################"
    puts @relations
  end

  def create
    @relation = JoinTableItemCart.create(cart: Cart.find_by(user: current_user), item: params[:item_id])
  end
  
end
