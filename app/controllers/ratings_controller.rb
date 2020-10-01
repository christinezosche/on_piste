class RatingsController < ApplicationController
    before_action :require_login

    def new
        @rating = Rating.new
    end

    def create
        @trail = Trail.find_by(id: params[:rating][:trail_id])
        @mountain = @trail.mountain
        @rating = Rating.new(rating_params)
        if Rating.find_by(trail_id: params[:rating][:trail_id], user_id: params[:rating][:user_id])
            flash[:alert] = "You have already rated this trail."
            redirect_to mountain_path(@mountain)
        elsif @rating.valid?
            @rating.save
            redirect_to mountain_path(@mountain)
        else
            flash[:alert] = "Error: No rating value selected."
            redirect_to mountain_path(@mountain)
        end
    end

    private

    def rating_params
        params.require(:rating).permit(:value, :trail_id, :user_id)
    end
end
