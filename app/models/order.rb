class Order < ApplicationRecord
  belongs_to :user

  after_create :order_user_confirmation_email
  after_create :order_admin_confirmation_email

  def order_user_confirmation_email
    UserMailer.order_confirmation_email(self.user_id, self).deliver_now
  end
  
  def order_admin_confirmation_email
    UserMailer.copy_order_admin(self.user_id, self).deliver_now
  end
end
