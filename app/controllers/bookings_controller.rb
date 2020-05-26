class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def delete
    @booking.destroy
    redirect_to bikes_path
  end
end
