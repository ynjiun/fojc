class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
    
  def index
    
  end

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to current_user
    else
      flash[:notice] = "Post cannot be empty!"
      redirect_to current_user
    end
  end

  def destroy
  end
end