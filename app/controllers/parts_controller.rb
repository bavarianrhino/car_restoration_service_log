class PartsController < ApplicationController

    def index
        @parts = Part.all
    end


    def show
        @part = Part.find(params[:id])
    end


    def new
        @part = Part.new
    end


    def create
        @part = Part.create(part_params)
        if @part.save
            redirect_to @part
        else
            render 'new'
        end
        # use below with no validates
        # redirect_to part_path(@part)
    end


    def edit
        @part = Part.find(params[:id])
    end


    def update
        @part = Part.find(params[:id])
        @part.update(part_params)
        redirect_to part_path(@part)
    end


    private
    def part_params
        params.require(:part).permit(:part_number, :part_name, :cost, :part_type, :quantity, :vendor_id) #FILL .PERMIT PARAMS
    end

end
