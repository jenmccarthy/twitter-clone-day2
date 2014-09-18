class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.valid?
      respond_to do |format|
        format.html { redirect_to user_path(current_user), notice: 'Your tweet has been added '}
        format.js
      end
    else
    render 'new'
    end
  end


  private
  def tweet_params
    params.require(:tweet).permit(:status).merge(:user_id => current_user.id)
  end

end
