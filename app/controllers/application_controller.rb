class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper_method :current_user, :require_login, :logged_in?
    
    def index

    end

    private
    def current_user
        @user ||= User.find_by_id(session[:user_id])
    end
    
    def require_login
        return head(:forbidden) unless session.include? :user_id
    end

    def verify_user
        User.find_by(id: params[:user_id]) == User.find_by(id: session[:user_id])
    end

    def logged_in?
        session[:user_id]
    end

end
