class BookingsController < ApplicationController
  before_action :set_bike, only: [:edit, :update]
  def edit;end

  def update
    @booking.update(booking_params)
    redirect_to bikes_path(@bike)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

   def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date)
  end
end
