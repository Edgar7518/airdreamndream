class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @user = current_user
  end

  def new
    @dream = Dream.find(params[:dream_id])
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @dream = Dream.find(params[:dream_id])
    @location.dream = @dream
    @location.user = current_user

    if @location.save
      redirect_to locations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  private
  def location_params
    params.require(:location).permit([:comment])
  end
end
