class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def new
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def show
  end

  def create
    Tweet.create(content: tweet_params[:content], user_id: current_user.id)
    redirect_to new_tweet_path
  end

  private
  def tweet_params
    params.permit(:content)
  end

end
