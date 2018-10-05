class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to plant_path(@comment.plant)
    else
      flash[:error] = @comment.errors.full_messages
      redirect_to plant_path(@comment.plant)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @plant = @comment.plant_id
    @comment.destroy
    redirect_to plant_path(@plant)
  end

private
  def comment_params
    params.require(:comment).permit(:content, :plant_id)
  end
end
