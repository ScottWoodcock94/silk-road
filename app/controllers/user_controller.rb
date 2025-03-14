class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    redirect_to_users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    user.update(params[:user])
  end

  def destroy
    @user = User.find(params[:id])
    user.destroy
    redirect_to_users_path
  end
end
