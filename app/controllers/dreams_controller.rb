class DreamsController < ApplicationController
  def index
    @dreams = Dream.all
  end

  def show
  end

  def new
    @drem = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.save
  end
end
