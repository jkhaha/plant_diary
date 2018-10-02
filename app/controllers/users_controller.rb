class UsersController < ApplicationController
  # 
  # def new
  #   @user = User.new
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     session[:user_id = @user.id]
  #     redirect_to user_path(@user)
  #   else
  #     flash[:error] = @user.errors.full_messages
  #     redirect_to new_user_path
  #   end
  # end

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
