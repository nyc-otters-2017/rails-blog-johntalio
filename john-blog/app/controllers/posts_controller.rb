class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(params[:post])
    if @post.save
      session[:user_id] = @user.id
      redirect_to @post
    else
      render 'new'
    end
  end

  def create
  end

  def show
  end
end
