class VendorsController < ApplicationController

    def index
        @vendors = Vendor.all
    end


    def show
        @vendor = Vendor.find(params[:id])
    end


    def new
        @vendor = Vendor.new
    end


    def create
        @vendor = Vendor.create(vendor_params)
        if @vendor.save
            redirect_to @vendor
        else
            render 'new'
        end
        # use below with no validates
        # redirect_to vendor_path(@vendor)
    end


    def edit
        @vendor = Vendor.find(params[:id])
    end


    def update
        @vendor = Vendor.find(params[:id])
        @vendor.update(vendor_params)
        redirect_to vendor_path(@vendor)
    end


    private
    def vendor_params
        params.require(:vendor).permit(:name, :contact, :website, :location) #FILL .PERMIT PARAMS
    end

end
