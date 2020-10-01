class MountainsController < ApplicationController
    before_action :require_login

    def index
        @user = User.find_by(id: session[:user_id])
        @mountains = Mountain.all
        @top_trails = Trail.all.sort {|trail| trail.trail_rating}.reverse
        @top_users = User.all.sort {|user| user.trips.count}.reverse
    end

    def show
        @mountain = Mountain.find_by(id: params[:id])
    end

end
