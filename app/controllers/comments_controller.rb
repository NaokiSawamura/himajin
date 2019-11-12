class CommentsController < ApplicationController
  def index
    @comments = Comment.includes(:user).order("created_at DESC")
  end

  def new
    @comments = Comment.includes(:user).order("created_at DESC")
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    Comment.create(content: comment_params[:content], user_id: current_user.id)
    redirect_to tweet_path
  end

  def destroy
    if @comment.user_id == current_user.id
      @comment.destroy 
      redirect_to tweet_path
    end
  end

  private
  def comment_params
    params.permit(:content)
  end


end
