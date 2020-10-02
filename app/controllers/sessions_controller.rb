class SessionsController < ApplicationController

    def new
        if logged_in?
            redirect_to mountains_path
        end
    end

    def create
        @user = User.find_by(email: params[:session][:email])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            redirect_to mountains_path
        else
            flash[:alert] = 'Invalid email/password combination'
            render 'new'
        end
    end

    def omniauth
        user = User.from_omniauth(auth)
        if user.valid?
            session[:user_id] = user[:id]
            redirect_to mountains_path
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end

    protected

        def auth
            request.env['omniauth.auth']
        end
end
