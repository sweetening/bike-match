class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    # Associate my review together with my booking
    @review.booking = @booking
    if @review.save
      # success
      redirect_to bike_path(@booking.bike_id, anchor: "review-#{@review.id}")
    else
      # failure
      render 'bikes/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
