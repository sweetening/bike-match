class BookingsController < ApplicationController

def show
 @booking = bike.find(params[:id])
 end
end
