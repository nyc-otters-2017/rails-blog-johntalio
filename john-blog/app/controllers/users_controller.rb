class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Blog!"
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_path
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
