class UsersController < ApplicationController

  # def index
  #   @user = User.new
  #   if @user.valid?
  #     @user.save
  #     redirect_to user_path(@user)
  #   else
  #
  #   end

    def show
      @user = User.find(params[:id])
      if params[:search]
        @plants = Plant.where(plant_species: params[:search])
        byebug
        if @plants == []
          error = "No plants match your search"
          error
        end
      else
        @plants = @user.plants
      end
    end

  private

  # def user_params
  #   params.require(:user).permit(:name)
  # end

end
