class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(params[:post])
    if @post.save
    end
  end

  def create
  end

  def show
  end
end
