class TripsController < ApplicationController
    before_action :require_login


    def index
        if verify_user
            @trips = User.find(params[:user_id]).trips
        else
            flash[:alert] = "You do not have permission to view this page."
            render :template => "mountains/index"
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
        if @trip.user_id != current_user.id
            flash[:alert] = "You do not have permission to view this page."
                render :template => "mountains/index"
        end
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
        params.require(:trip).permit(:date, :mountain_id, :user_id)
    end
end
