class OwnersController < ApplicationController

    def index
        @owners = Owner.all
    end


    def show
        @owner = Owner.find(params[:id])
    end


    def new
        @owner = Owner.new
    end


    def create
        @owner = Owner.create(owner_params)
        if @owner.save
            redirect_to @owner
        else
            render 'new'
        end
        # use below with no validates
        # redirect_to owner_path(@owner)
    end


    def edit
        @owner = Owner.find(params[:id])
    end


    def update
        @owner = Owner.find(params[:id])
        @owner.update(owner_params)
        redirect_to owner_path(@owner)
    end


    private
    def owner_params
        params.require(:owner).permit() #FILL .PERMIT PARAMS
    end

end
