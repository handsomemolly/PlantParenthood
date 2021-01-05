class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def index
    @sitters = User.sitters
  end

  def new
  end

  def show
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path 
  end
  
  def edit
  end

  def update
    @user = User.update(user_params)
    redirect_to user_path
  end

  def destroy
    @user.destroy
    redirect_to new_user_path
  end

  private

  def user_params
    params.require(:users).permit(:name, :experience, :location, :password_digest)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def require_login
    redirect_to login_path unless session.include? :name
  end
end
