class SessionsController < ApplicationController
    # before_action :require_login
    
    def new
    end

    def create 
        @user = User.find_by(name: params[:user][:name])
        if @user
            return head(:forbidden) unless @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash[:alert] = "Please enter correct username and password"
            redirect_to login_path
        end
    end

    def destroy
        session.delete :name
    end


    private

    def require_login
        return head(:forbidden) unless session.include? :name
    end
end
