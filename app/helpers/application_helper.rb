module ApplicationHelper

  def create_cart(user)
    if (current_user)
      @cart = Cart.find_by(user_id: current_user.id)

      if (@cart)
        
      else
        @cart = Cart.create(user_id: current_user.id)
       
      end
    end
  end
  
end
