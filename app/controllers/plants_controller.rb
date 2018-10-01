class PlantsController < ApplicationController

  def show
  end

  def new
    @plant = Plant.new(plant_params)
  end

private
  def plant_params
    params.require(:plant).permit(:nickname, :plant_species, :age, :description, :location, :image_url, :watering_schedule)
  end
end
