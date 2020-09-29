class UsersController < ApplicationController


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

    private

    def user_params
        params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :experience)
    end
end
