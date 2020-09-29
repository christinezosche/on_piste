class TripsController < ApplicationController

    def new
        @trip = Trip.new
    end

    def create
        @trip = Trip.new(trip_params)
        if @trip.valid?
            @trip.save
            redirect_to mountains_path
        else
            render :new
        end
    end
end
