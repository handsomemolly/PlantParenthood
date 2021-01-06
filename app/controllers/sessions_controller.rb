class SessionsController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]
    
    def new
    end

    def create 
        @user = User.find_by(name: params[:session][:name])
        
        if @user && @user.authenticate(params[:session][:password])
            login_user(@user.id)
            redirect_to @user
        else
            flash[:errors] = ["Please enter correct username and password"]
            redirect_to login_path
        end
    end

    def destroy
      logout_user
    end

end
