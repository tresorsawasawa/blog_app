class PostsController < ApplicationController
  def index
    @user = current_user
  end

  def def
    @post = Post.find(params[:id])
  end
end
