class DreamsController < ApplicationController
  def index
    @dreams = Dream.all
  end

  def show
  end

  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    if @dream.save
      redirect_to dream_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dream_params
    params.require(:dream).permit(:name, :description, :price, :duration)
  end
end
