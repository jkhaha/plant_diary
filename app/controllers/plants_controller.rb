class PlantsController < ApplicationController

  def show
    @plant = Plant.find(params[:id])
    @user = @plant.user
    security_measures
    @comments = @plant.comments
    @comment = Comment.new
  end

  def new
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
    security_measures
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

  def security_measures
    @user = @plant.user
    unless session[:user_id] == @user.id
    redirect_to user_path(current_user)
  end
  end
end
