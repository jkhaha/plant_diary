class TasksController < ApplicationController

  def new
    @task = Task.new(user_id: current_user.id)
  end

  def create
    @task = Task.new(task_params)
    if @task.valid?
      @task.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @user = @task.user
    @task.destroy
    redirect_to user_path(@user)
  end

  private
  def task_params
    params.require(:task).permit(:content, :user_id)
  end
end
