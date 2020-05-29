class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy, :address]

  def index
    if params[:query].present?
      @bikes = Bike.where(title: params[:query])
    else
      @bikes = Bike.all
    end

    @bikes= Bike.geocoded # returns flats with coordinates

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike })
      }
    end
  end

  def show; end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save!
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  def edit;
  @bike = Bike.find(params[:id])
  end

  def update
    if @bike.update(bike_params)
      redirect_to bike_path(@bike)
    else
      render :edit
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_path, notice: 'The bike was successfully destroyed.'
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:category, :location,  :address, :price, :title, :lat, :long, photos: [])
  end
end
