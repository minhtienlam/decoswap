class BookingsController < ApplicationController
	protect_from_forgery
	before_action :authenticate_user!

	def new
		@item = Item.find(params[:item_id])
		@booking = Booking.new
	end

	def create
		@item = Item.find(params[:item_id])
		@user = current_user
		@booking = Booking.new(booking_params)
		@booking.user = @user
		@booking.item = @item

    	@item.change_status!

		@booking.start_date = Time.now
		@booking.end_date = Date.strptime(booking_params[:end_date], "%d/%m/%Y")


		if @booking.save
			@item.save
      UserMailer.creation_confirmation(@item).deliver_now
      redirect_to profile_path
		else
			render :new
		end
	end

	def show
		@user = current_user
		@item = Item.find(params[:item_id])
		@booking = Booking.find(params[:id])
	end

  def destroy
  	#raise
    @booking = Booking.find(params[:id])
    #@item = Item.find(@booking.item.id)
    #@item.status = "Free"
    @booking.update(status: "swap")

    @items = Item.where(price_cents: @booking.item.price_cents)

    redirect_to items_path
    #@booking.end_date = Time.now
    #if @booking.save
    #  @item.save
    #  redirect_to profile_path
    #else
    #  render :new
    #end
  end

	private

   def set_item
      @item = Item.find(params[:item_id])
    end

	def booking_params
		params.require(:booking).permit(:start_date, :end_date)
	end
end
