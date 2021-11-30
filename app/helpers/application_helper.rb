module ApplicationHelper

  def create_cart(user)
    if(@cart = Cart.find_by(user: current_user))
      puts "$$$$$$$$$$$$$$$"
      puts "A cart already exists : "
      puts @cart
    else
      @cart = Cart.create(user: current_user)
      puts "$$$$$$$$$$$$$$$"
      puts "A cart is created : "
      puts @cart
    end
  end
  
end
