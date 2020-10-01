class RatingsController < ApplicationController
    before_action :require_login

    def new
        @rating = Rating.new
    end

    def create
        @trail = Trail.find_by(id: params[:rating][:trail_id])
        @mountain = @trail.mountain
        @rating = Rating.new(rating_params)
        if @rating.valid?
            @rating.save
            redirect_to mountain_path(@mountain)
        else
            flash[:alert] = "Error: No rating value selected."
            redirect_to mountain_path(@mountain)
        end
    end

    private

    def rating_params
        params.require(:rating).permit(:value, :trail_id)
    end
end
