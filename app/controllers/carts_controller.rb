class CartsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!

  def index
  	@order = current_user.current_order
    @carts = @order ? @order.carts : []
	end

	def new
		@cart = Cart.new
	end

	def create
		order = current_user.current_order
		unless order
			# create
			order = Order.create(user: current_user, status: "ongoing")
		end

		item = Item.find(params[:cart][:id])
		item.status = "Rent"
		item.save

		Cart.create(item: item, order: order)

		#redirect_to cart_path, notice: 'Added item to cart'
	end

	def destroy
		cart = Cart.find(params[:format])
		@item = cart.item
		@item.update(status: "Free")

		cart.destroy
		redirect_to cart_path
	end

	def delete_all
		Cart.where(user: current_user).destroy_all
		redirect_to cart_path
	end

  def after_sign_in_path(resource)

  end

end
