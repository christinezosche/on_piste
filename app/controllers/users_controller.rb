class UsersController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]


    def new
        @user = User.new
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
        @user = current_user
        trips = @user.trips.all.sort_by {|trip| trip.date}.reverse
        @trips = trips[0..4]
        
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :email, :password, :password_confirmation)
    end
end
