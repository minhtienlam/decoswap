class ProfilesController < ApplicationController
	def show
		@user = current_user
    @sum_of_prices = sum_of_prices(@user)
    @sum_of_items = sum_of_items(@user)
  end

	def edit

	end

	def update

	end

  def historic
    @user = current_user
    @sum_of_prices = sum_of_prices(@user)
    @sum_of_items = sum_of_items(@user)
  end

  def account_settings
    @user = current_user
    @sum_of_prices = sum_of_prices(@user)
    @sum_of_items = sum_of_items(@user)
  end

  def sum_of_prices(user)
    sum = 0
    user.bookings.each do |booking|
      if booking.item.status == "Rent"
      sum += booking.item.price_cents
      else
      end
    end
    return sum/100
  end

  def sum_of_items(user)
    summ = 0
    user.bookings.each do |booking|
      if booking.item.status == "Rent"
      summ += 1
      else
      end
    end
    return summ
  end

end
