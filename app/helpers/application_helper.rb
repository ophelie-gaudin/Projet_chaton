module ApplicationHelper

  def create_cart(user)
    if (current_user)
      @cart = Cart.find_by(user_id: current_user.id)

      if (@cart)
        puts "$$$$$$$$$$$$$$$"
        puts "A cart already exists "
      else
        @cart = Cart.create(user_id: current_user.id)
        puts "$$$$$$$$$$$$$$$"
        puts "A cart is created "
      end
    end
  end
  
end
