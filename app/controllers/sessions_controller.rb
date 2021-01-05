class SessionsController < ApplicationController
    # before_action :require_login

    def new
    end


    def create session[:name] = params[:name]
        redirect_to '/'
    end

    def destroy
        session.delete :name
    end


    private

    def require_login
        return head(:forbidden) unless session.include? :name
    end
end
end
