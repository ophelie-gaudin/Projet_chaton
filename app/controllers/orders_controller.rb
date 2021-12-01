class OrdersController < ApplicationController
  def new
    @currentUser = current_user.id
    puts @currentUser
    @item = Item.find(params[:id])
    puts params
    @user= User.find(@currentUser)
    @amount = @item.price
    @stripe_amount = (@amount * 100).to_i
  end

  def create
    #Before the rescue at the beginning of the method
    @currentUser = current_user.id
    @user= User.find(@currentUser)
    @items = Item.last
    puts @items
    puts'-----------------------------------------------'
    @amount = @items.price
    @stripe_amount = (@amount * 100).to_i
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
      redirect_to new_order_path
    end
    
    # After the rescue, if the payment succeeded
    redirect_to home_path 
  end 
end
