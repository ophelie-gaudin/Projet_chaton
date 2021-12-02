class ProfilesController < ApplicationController
  before_action :set_user, only: [:update, :edit, :show]

  def show
    @user = current_user
    @user_email = current_user.email

    @user_orders = Order.select{ |order| order.user_id = current_user.id }
    


  end

  def edit
    
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
    
  end

  def set_user
    @user = current_user
  end

end
