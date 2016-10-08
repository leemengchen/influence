class TransactionsController < ApplicationController

  # before_action :authenticate!
  respond_to :js
  before_action :price_item


  def new
    @token = generate_client_token

  end

  def create

  if current_marketer.has_payment_info?
    @result = Braintree::Transaction.sale(
                amount: @price,
                payment_method_nonce: params[:payment_method_nonce],
                customer: {
                  first_name: params[:first_name],
                  last_name: params[:last_name],
                  company: params[:company],
                  email: current_user.email,
                  phone: params[:phone]
                },
                options: {
                  store_in_vault: true
                })
  else
    @result = Braintree::Transaction.sale(
                amount: @price,
                payment_method_nonce: params[:payment_method_nonce])
  end

  if @result.success?

    redirect_to root_url, notice: "Congrats! Your transaction has been successfully!"
  else
    flash[:alert] = "Something went wrong while processing your transaction. Please try again!"

    render :new
  end
end

  private
  # def check_cart!
  #   if current_u.get_cart.blank?
  #     redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
  #   end
  # end

  def generate_client_token
    if current_marketer.has_payment_info?
      Braintree::ClientToken.generate(customer_id: current_marketer.braintree_customer_id)
    else
      Braintree::ClientToken.generate
    end
  end

  def price_item
    @price = @amountpaid
    # items = JSON.parse(cookies[:cart])
    # items.each do |id, q|
    #   item = Item.find_by(id: id)
    #   @price += (item.price.to_i * q.to_i)

  end
end
