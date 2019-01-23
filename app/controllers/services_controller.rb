class ServicesController < ApplicationController
  before_action :authorize!

    def index
        @services = Service.all
    end


    def show
        @service = Service.find(params[:id])
    end


    def new
        @service = Service.new
    end


    def create
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
        params.require(:service).permit(:date, :work_description, :car_miles, :work_hours) #FILL .PERMIT PARAMS
    end

end
