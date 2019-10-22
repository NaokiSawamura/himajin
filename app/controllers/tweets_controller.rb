class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user)
  end

  def new
    if user_signed_in?
      @tweet = current_user.tweets.new
      # @tweet.images.build
      else
        redirect_to new_user_session_path
      end
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save!
      params[:images][:image_url].each do |image|
        @tweet.images.create!(image: image, item_id: @tweet.id)
      end
      redirect_to root_path
    else
      redirect_to new_items_path
    end
  end

end
