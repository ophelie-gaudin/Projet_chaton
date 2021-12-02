class ProfilesController < ApplicationController
  before_action :set_user, only: [:update, :edit, :show]

  def show
    @user = current_user
    @user_email = current_user.email
  end

  def edit
    
  end

  def update    
    @user.update(user_params)
    redirect_to home_index_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
    
  end

  def set_user
    @user = current_user
  end

end
