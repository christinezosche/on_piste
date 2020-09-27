class SessionsController < ApplicationController

    def new
        @users = User.all
    end

    def create
        @user = User.find_by(email: params[:email])
        if params[:password] == '' || params[:password] == nil
            flash[:alert] = "Please enter a password."
            redirect_to login_path
        elsif @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to mountains_path
        else
            flash[:alert] = "Incorrect email or password."
            redirect_to login_path
        end
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end
end
