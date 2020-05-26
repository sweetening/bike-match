class BikesController < ApplicationController
  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:title, :type, :location, :price, :image_url, :lat, :long, :user_id)
  end

end
