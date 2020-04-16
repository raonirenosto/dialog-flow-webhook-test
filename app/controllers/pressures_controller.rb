class PressuresController < ApplicationController
  def create
    puts params[:systolic]
    Pressure.create(systolic: params[:systolic])
  end
end
