class PlantsController < ApplicationController

  def show
    @plant = Plant.find(params[:id])
    @comments = @plant.comments
    @comment = Comment.new
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.save
    redirect_to plant_path(@plant)
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    redirect_to plant_path(@plant)
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to user_path(@user)
  end

private
  def plant_params
    params.require(:plant).permit(:nickname, :plant_species, :age, :description, :location, :image_url, :watering_schedule, :user_id)
  end
end
