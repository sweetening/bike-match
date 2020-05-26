class BikesController < ApplicationController
  before_action :set_bike, only: [:show]

  def show; end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:type, :location, :price, :title, :image_url, :lat, :long)
  end
end
