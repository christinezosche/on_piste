class TripsController < ApplicationController

    def new
        @trip = Trip.new
    end

    def create
        mountain = Mountain.find_by(name: params[:trip][:mountain])
        @trip = Trip.new(date: params[:trip][:date], mountain: mountain)
        @trip.user = current_user
        if @trip.valid?
            @trip.save
            redirect_to mountains_path
        else
            render :new
        end
    end

    private

    def trip_params
        params.require(:trip).permit(:date, :mountain)
    end
end
