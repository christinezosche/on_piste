class MountainsController < ApplicationController
    before_action :require_login

    def index
        @user = User.find_by(id: session[:user_id])
        @mountains = Mountain.all.sort_by {|mountain| mountain.mountain_rating}.reverse
        @top_trails = Trail.all.sort_by {|trail| trail.trail_rating}.reverse
        @top_users = User.all.sort_by {|user| user.trips.count}.reverse
    end

    def show
        @mountain = Mountain.find_by(id: params[:id])
    end

end
