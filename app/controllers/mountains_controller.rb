class MountainsController < ApplicationController
    before_action :require_login

    def index
        @mountains = Mountain.sort_by_rating
        @top_trails = Trail.top_5
        @top_users = User.top_5
    end

    def show
        @mountain = Mountain.find_by(id: params[:id])
    end

end
