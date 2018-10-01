class UsersController < ApplicationController

  def index
    @user = User.new
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else

    end

    def show
      @user = User.find(params[:id])
      @plants = @user.plants
    end
  end

  private

  # def user_params
  #   params.require(:user).permit(:name)
  # end

end
