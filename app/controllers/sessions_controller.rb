class SessionsController < ApplicationController

    def new
        @users = User.all
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user
            if params[:password] == '' || params[:password] == nil
                flash[:alert] = "Please enter a password."
                render :new
            elsif @user.authenticate(params[:password])
                session[:user_id] = @user.id
                redirect_to mountains_path
            else
                flash[:alert] = "Incorrect email or password."
                render :new
            end
        else
            flash[:alert] = "Incorrect email or password."
            render :new
        end
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end
end
