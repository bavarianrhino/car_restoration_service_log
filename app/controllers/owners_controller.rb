class OwnersController < ApplicationController

  # call authorize! wherever
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
        # verify password with confirmation password
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
        params.require(:owner).permit(:name, :street, :city, :state, :zip, :phone_number, :email, :username, :password_digest)
    end

end
