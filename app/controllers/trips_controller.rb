class TripsController < ApplicationController

    def new
        @trip = Trip.new
    end

    def edit
        @trip = Trip.find(params[:id])
    end

    def create
        @trip = current_user.trips.create(trip_params)
        if @trip.valid?
            @trip.save
            redirect_to mountains_path
        else
            render :new
        end
    end

    def update
        @trip = Trip.find(params[:id])
        @trip.update(trip_params)
        if @trip.valid?
            @trip.save
            redirect_to mountains_path
        else
            render :edit
        end
    end

    def destroy
        @trip = Trip.find(params[:id])
        @trip.destroy
        redirect_to mountains_path
    end

    private

    def trip_params
        params.require(:trip).permit(:date, :mountain_id)
    end
end
