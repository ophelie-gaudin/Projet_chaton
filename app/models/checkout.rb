class Checkout < ApplicationRecord
  after_create :order_user_email
  # after_create :order_admin_email

  def order_user_email
    UserMailer.order_user_confirmation_email(self.user_id, self.order_id).deliver_now
  end

  # def order_admin_email
  #   UserMailer.order_admin_confirmation_email(self.user_id, self).deliver_now
  # end
end
