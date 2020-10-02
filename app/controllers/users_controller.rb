class UsersController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]


    def new
        if logged_in?
            redirect_to mountains_path
        else
        @user = User.new
        end
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to mountains_path
        else
            render :new
        end
    end

    def show
        if verify_user
            @user = User.find(params[:id])
            @trips = @user.top_5_trips
        else
            flash[:alert] = "You do not have permission to view this page."
            redirect_to mountains_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :email, :password, :password_confirmation)
    end

    def verify_user
        User.find_by(id: params[:id]) == current_user
    end
end
