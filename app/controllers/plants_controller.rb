class PlantsController < ApplicationController

  def show
    @plant = Plant.find(params[:id])
    @comments = @plant.comments
    @comment = Comment.new
    @user = @plant.user
  end

  def new
    byebug
    @plant = Plant.new(user_id: current_user.id)
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.valid?
      @plant.save
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    if @plant.update(plant_params)
      redirect_to plant_path(@plant)
    else
      render :edit
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @user = @plant.user
    @plant.destroy
    redirect_to user_path(@user)
  end

private
  def plant_params
    params.require(:plant).permit(:user_id, :nickname, :plant_species, :age, :description, :location, :image_url, :watering_schedule)
  end
end
