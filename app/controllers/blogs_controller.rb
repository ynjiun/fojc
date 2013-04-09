class BlogsController < ApplicationController
  def home
    if signed_in?
        @micropost  = current_user.microposts.build        
        if params[:search]
          @feed_items = Micropost.search(params[:search]).paginate(page: params[:page])
        else
          @feed_items = current_user.feed.paginate(page: params[:page])
        end
    end
  end

  def follow
  end
end
