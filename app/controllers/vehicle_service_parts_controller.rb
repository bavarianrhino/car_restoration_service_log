class VehicleServicePartsController < ApplicationController

    def index
        @vehicleserviceparts = VehicleServicePart.all
    end


    def show
        @vehicleservicepart = VehicleServicePart.find(params[:id])
    end


    def new
        @vehicleservicepart = VehicleServicePart.new
    end


    def create
        @vehicleservicepart = VehicleServicePart.create(vsp_params)
        if @vehicleservicepart.save
            redirect_to @vehicleservicepart
        else
            render 'new'
        end
        # use below with no validates
        # redirect_to vehicleservicepart_path(@vehicleservicepart)
    end


    def edit
        @vehicleservicepart = VehicleServicePart.find(params[:id])
    end


    def update
        @vehicleservicepart = VehicleServicePart.find(params[:id])
        @vehicleservicepart.update(vsp_params)
        redirect_to vehicleservicepart_path(@vehicleservicepart)
    end


    private
    def vsp_params
        params.require(:vehicleservicepart).permit(:vehicle_id, :service_id, :part_id) #FILL .PERMIT PARAMS
    end
end
