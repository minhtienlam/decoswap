class OrdersController < ApplicationController

	def show
		@order = Order.where(status: 'paid').find(params[:id])
	end

	def edit
		@order = current_user.current_order
		#@order.status = "pending"
		#@order.save
	end

	def update
		@order = current_user.current_order
		@order.items.each do |item|
			Booking.create!(user: current_user, item: item, status: "booked", start_date: Time.now)
		end

		@order.update(billing_first_name: params[:order][:billing_first_name], billing_last_name: params[:order][:billing_last_name], billing_line: params[:order][:billing_line], billing_zip: params[:order][:billing_zip], billing_city: params[:order][:billing_city], billing_country: params[:order][:billing_country])

		respond_to do |format|
			format.js
		end
	end

	def swap
		@item_return = Item.find(params[:to_swap])
		@item_booked = Item.find(params[:format])
		@booking_return = Booking.where(item: @item_return)
		@booking_return.update(status: "Swap")
		@item_return.update(status: "Free")
		@item_booked.update(status: "Rent")
		Booking.create!(user: current_user, item: @item_booked, status: "booked", start_date: Time.now)
	end

	private

	def order_params
		params.require(:order).permit(:billing_first_name, :billing_last_name, :billing_line, :billing_zip, :billing_city, :billing_country)
	end

end


