class JoinTableItemCartController < ApplicationController
  def destroy
    @relation = Cart.findBy(user: User.last).items
    puts "###################################################"
    puts @relations
  end
end
