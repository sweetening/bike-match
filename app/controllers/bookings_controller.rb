class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :delete]

  def new
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)

    @booking.bike = @bike

    if @booking.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end
  
  def edit;end

  def update
    @bike = Bike.find(params[:bike_id])
    @booking.update(booking_params)
    @booking.bike = @bike
    redirect_to bikes_path(@bike)
  end
  
 def delete
    @booking = Booking.find(params[:id])
    @bike = Bike.find(@booking.bike_id)
    @booking.destroy
    redirect_to bike_path(@bike)
  end
    
  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
