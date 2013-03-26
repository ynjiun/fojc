class BlogsController < ApplicationController
  def home
    if signed_in?
        @micropost  = current_user.microposts.build
        @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def follow
  end
end
