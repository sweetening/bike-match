class BookingsController < ApplicationController
   before_action :set_booking, only: [:edit, :update, :delete]

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
  end

  def create
    @bike = Bike.find(params[:bike_id])

    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.user = current_user
    @booking.total_price = (@booking.end_date - @booking.start_date) * @bike.price
    if @booking.save
      redirect_to bike_booking_path(@bike, @booking)
    else
      render :new
    end
  end

  def edit; end

  def update
    @bike = Bike.find(params[:bike_id])
    @booking.update(booking_params)
    @booking.bike = @bike
    redirect_to dashboard_index_path
  end

 def delete
    @booking = Booking.find(params[:id])
    @bike = Bike.find(@booking.bike_id)
    @booking.destroy
    redirect_to dashboard_index_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
