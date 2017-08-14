class Account::PostsController < ApplicationController
  before_action :authenticate_user!
    def index
      @posts = current_user.posts
    end

    def show
      @posts = Posts.find(params[:id])

    def edit
      @posts = Posts.find(params[:id])
    end

    def update
      @gosts = Gosts.find(params[:group_id])
      @posts = Posts.find(params[:id])
      redirect_to posts_path,notice:"更新成功..."
    end

    def destroy
      @posts = Posts.find(params[:id])
      @posts.destroy
      flash[:alert] = "Group deleted"
      redirect_to posts_path
    end
   end
  end
