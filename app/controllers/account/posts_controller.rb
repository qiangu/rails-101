class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def destroy
    @posts = Posts.find(params[:id])
    @posts.destroy
    flash[:alert] = "文章已删除"
    redirect_to posts_path
  end
end
