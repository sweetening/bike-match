class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update]
  def index
    @bikes = Bike.all
  end
  
  def show; end
  
  def edit; end

  def update
    if @bike.update(bike_params)
      redirect_to bike_path(@bike)
    else
      render :edit
    end
  end
  
  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:category, :location, :price, :title, :image_url, :lat, :long)
  end
end
