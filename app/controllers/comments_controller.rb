class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)

    @comment.save
    redirect_to plant_path(@comment.plant)
  end

private
  def comment_params
    params.require(:comment).permit(:content, :plant_id)
  end
end
