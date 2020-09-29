class TripsController < ApplicationController

    def new
        @trip = Trip.new
    end

    def create
        @trip = Trip.new(trip_params)
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
