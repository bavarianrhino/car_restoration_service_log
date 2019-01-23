class VehiclesController < ApplicationController
  before_action :authorize!

    def index
        @vehicles = Vehicle.where(owner_id: current_user.id)
    end


    def show
        @vehicle = Vehicle.find(params[:id])
    end


    def new
        @vehicle = Vehicle.new
    end


    def create
        @vehicle = Vehicle.create(vehicle_params)
        if @vehicle.save
            redirect_to @vehicle
        else
            render 'new'
        end
        # use below with no validates
        # redirect_to vehicle_path(@vehicle)
    end


    def edit
        @vehicle = Vehicle.find(params[:id])
    end


    def update
        @vehicle = Vehicle.find(params[:id])
        @vehicle.update(vehicle_params)
        redirect_to vehicle_path(@vehicle)
    end


    private
    def vehicle_params
        params.require(:vehicle).permit(:make, :model, :year, :vin, :engine, :car_classification, :color, :owner_id) #FILL .PERMIT PARAMS
    end

end
