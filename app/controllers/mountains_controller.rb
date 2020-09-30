class MountainsController < ApplicationController
    before_action :require_login

    def index
        @user = User.find_by(id: session[:user_id])
        @mountains = Mountain.all
    end

    def show
        @mountain = Mountain.find_by(id: params[:id])
    end

end
