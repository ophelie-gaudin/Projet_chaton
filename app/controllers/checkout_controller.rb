class CheckoutController < ApplicationController
  before_action :authenticate_user!

  def new
    @card = Cart.find_by(user_id: current_user.id)
    @stripe_amount = 500
    @user = current_user.id
    @items = @card.items
    puts @items
    puts '----------------------------------------'
    total = 0
    @items.each do |item|
      total += item.price
      end
    @cart_total = total
    
    @amount = @cart_total
    puts @amount
    @stripe_amount = (@amount * 100).to_i
    puts @stripe_amount
  end

  def create
  # Before the rescue, at the beginning of the method
    @card = Cart.find_by(user_id: current_user.id)
    @stripe_amount = 500
    @user = current_user
    @items = @card.items
    puts @items
    puts '----------------------------------------'
    total = 0
    @items.each do |item|
      total += item.price
    end
    @cart_total = total
  
    @amount = @cart_total
    puts @amount
    @stripe_amount = (@amount * 100).to_i
    puts @stripe_amount
    
    begin 
  
      customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
      })  
      charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @stripe_amount,
      description: "Achat d'un produit",
      currency: 'eur',
      })
  
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_checkout_path
    end
    #Order.create(stripe_customer_id: customer.id, customer: current_user, ) if charge.paid
    #After the rescue, if the payment succeeded
    @relations= JoinTableItemCart.where(cart_id: Cart.find_by(user_id: current_user.id).id).destroy_all
  
  end
end
