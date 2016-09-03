class LikesController < ApplicationController
  before_action :logged_in_user
  
  def create
    @micropost = Micropost.find(params[:liked_id])
    current_user.like(@micropost)
  end
  
  def destroy
    @micropost = current_user.likes.find(params[:id]).liked
    current_user.unlike(@micropost)
  end
end
