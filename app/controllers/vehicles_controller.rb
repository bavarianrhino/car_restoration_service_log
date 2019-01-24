class VehiclesController < ApplicationController
  before_action :authorize!

    def index
        @vehicles = Vehicle.where(owner_id: current_user.id)
    end


    def show
        @vehicle = Vehicle.find(params[:id])
        @services = Service.where(vehicle: @vehicle)
        @total_hours_of_service = @vehicle.total_hours_of_service
        @total_cost = @vehicle.total_parts_cost
        @part_list = @vehicle.list_parts_serviced
        @vendors = @vehicle.list_of_vendors
        # get rid of this vvv when @cost_of_part_designations is working and use that instead
        #@part_designations = @vehicle.part_designations
        @cost_of_part_designations = @vehicle.cost_of_part_designations
        #byebug
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
