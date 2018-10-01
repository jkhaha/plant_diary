class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    @plant = @comment.plant
    redirect_to plant_path(@plant)
  end

private
  def comment_params
    params.require(:comment).permit(:content, :plant_id)
  end
end
