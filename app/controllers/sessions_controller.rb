class SessionsController < ApplicationController
  def index
  end

  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if (@user && @user.authenticate(params[:password]))
      log_in_user(@user.id)
      flash[:message] = ["You are logged in!"]
      redirect_to user_path(@user)
    else
      flash[:error] = ["That didn't match anything we have in our database"]
      redirect_to new_session_path
    end
  end

  def destroy
    log_out!
    redirect_to new_session_path
  end

end
