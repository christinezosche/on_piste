class TripsController < ApplicationController

    def index
        if params[:user_id]
            if User.find_by(id: params[:user_id])
            @trips = User.find(params[:user_id]).trips
            else
            flash[:alert] = "User not found."
            render :template => "mountains/index"
            end
        else
            redirect_to mountains_path
        end
    end

    def new
        if params[:mountain_id] && !Mountain.exists?(params[:mountain_id])
            redirect_to mountains_path, alert: "Mountain not found."
        else
            @trip = Trip.new(mountain_id: params[:mountain_id])
        end
    end

    def edit
        @trip = Trip.find(params[:id])
    end

    def create
        @trip = current_user.trips.create(trip_params)
        if @trip.valid?
            @trip.save
            redirect_to user_path(current_user)
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
