class ApplicationController < ActionController::Base
  before_action :fetch_user
  before_action :require_login

  helper_method :fetch_user

  def fetch_user
    @logged_in = logged_in?
    @user = User.find(current_user_id) if logged_in?
  end
 
  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end

  private 

  def login_user(user_id)
    session[:user_id] = user_id
  end

  def current_user_id
    session[:user_id]
  end

  def logged_in?
    !!current_user_id
  end

  def logout_user
    session.delete(:user_id)
    flash[:notification] = ["Successfully logged out."]
    redirect_to login_path
  end

end
