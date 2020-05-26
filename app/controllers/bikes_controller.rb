class BikesController < ApplicationController

  def edit
  end

  def update
    if @bikes.update(params[:id])
      redirect_to edit_path(@bikes)
    else
      render :edit
    end
  end

  private

   # strong params
  def bikes_params
    params.require(:bike).permit(:type, :location, :price, :title, :image_url,
    :user_id, :lat, :long)
  end
end

