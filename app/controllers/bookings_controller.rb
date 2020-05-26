class BookingsController < ApplicationController
  before_action :set_bike, only: [:edit, :update, :delete]
  def edit;end

  def update
    @booking.update(booking_params)
    redirect_to bikes_path(@bike)
  end

  def delete
    set_booking
    @booking.destroy
    redirect_to bikes_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

   def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date)
  end
end
