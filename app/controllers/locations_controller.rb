class LocationsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def update
    if @location.update(location_params)
      redirect_to @location, notice: "Your rental was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def location_params
    params.require(:location).permit(:comment, :status)
  end
end
