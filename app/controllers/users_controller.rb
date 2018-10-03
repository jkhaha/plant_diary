class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
     @user = User.new(user_params)
     if @user.save
       start_session(@user.id)
       flash[:message] = "You are registered!"
       redirect_to user_path(@user)
     else
       flash[:errors] = @user.errors.full_messages
       redirect_to new_user_path
     end
  end

    def show
      @user = User.find(params[:id])
      if params[:search]
        @plants = Plant.where(plant_species: params[:search].capitalize)
        if @plants.empty?
          @error = "No plants match your search"
          @error
        end
      else
        @plants = @user.plants
      end
    end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end
