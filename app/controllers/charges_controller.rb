class ChargesController < ApplicationController

  def new
  end
  
  def create
    # Amount in cents
    @amount = (current_order.subtotal * 100).to_i
    @decimalAmount = (current_order.subtotal * 100)

  
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    current_order.status = Status.find(4)
    session[:order_id] = nil
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
