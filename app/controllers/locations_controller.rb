class LocationsController < ApplicationController
  def index
  end

  def new
    @dream = Dream.find(params[:dream_id])
    @location = Location.new
  end

  def create
    @location = Location.new
    @dream = Dream.find(params[:dream_id])
    @location.dream = @dream
    if @location.save
      redirect_to dream_location_path(@dream)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end
end
