class ServicesController < ApplicationController
  before_action :authorize!

    def index
      # vehicles = Vehicle.where(owner: current_user.id)
      # make this a method called get car services
      @services = Service.where(vehicle: Vehicle.where(owner: current_user.id))
    end


    def show
        @service = Service.find(params[:id])
    end


    def new
        @service = Service.new
        @parts = Part.all
        @vehicles = Vehicle.where(owner: current_user.id)
    end


    def create
      @vendors = Vendor.all
      #byebug
      @parts = Part.all
      @vehicles = Vehicle.where(owner: current_user.id)

        @service = Service.create(service_params)
        if @service.save
            redirect_to @service
        else
            render 'new'
        end
        # use below with no validates
        # redirect_to service_path(@service)
    end


    def edit
        @service = Service.find(params[:id])
    end


    def update
        @service = Service.find(params[:id])
        @service.update(service_params)
        redirect_to service_path(@service)
    end


    private
    def service_params
        params.require(:service).permit(:date, :work_description, :car_miles, :work_hours, :part_id, :vehicle_id) #FILL .PERMIT PARAMS
    end

end
