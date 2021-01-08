class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  skip_before_action :verify_authenticity_token, only: [:create]
  # skip_before_action :fetch_user, only: [:new, :create]

  def index
    @sitters = User.sitters
  end

  def new
    @user = User.new
    @cities = City.all
  end

  def show
  end

  def create
    @user = User.create(user_params)
    login_user(@user.id)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to home_path 
    else
      flash[:errors] = @user.errors.full_messages
      # flash[:alert] = ["Passwords do not match. Please try again", "User already exists with that name."]
      redirect_to root_path
    end
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
    params.require(:user).permit(:name, :experience, :city_id, :password)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end

end
