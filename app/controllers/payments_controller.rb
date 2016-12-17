class PaymentsController < ApplicationController

	before_action :set_order


	def new
	end

	def create
		customer = Stripe::Customer.create(
			source: params[:stripeToken],
			email:  params[:stripeEmail]
			)

		charge = Stripe::Charge.create(
    		customer:     customer.id,   # You should store this customer id and re-use it.
    		amount:       (@order.total_amount * 100), # or amount_pennies
    		description:  "Payment for Decoswap Order #{@order.id}",
    		currency:     @order.amount.currency
    		)
		@order.update(status: 'paid', payment: charge.to_json, stripe_id: customer.id, email: params[:stripeEmail])
		redirect_to order_path(@order)

	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to new_order_payment_path(@order)
	end

	private

	def set_order
		@order = Order.where(status: 'ongoing').find(params[:order_id])
	end
end
