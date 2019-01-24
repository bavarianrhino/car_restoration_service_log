class OwnersController < ApplicationController
  before_action :authorize!, :except => [:new, :create]

  # call authorize! wherever

    def show
        @owner = Owner.find(current_user.id)
        @vehicles = @owner.get_vehicles
        @total_hours = @owner.total_hours_of_service
        @total_cost = @owner.total_parts_cost
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
        @owner = Owner.find(current_user.id)
    end


    def update
        @owner = Owner.find(current_user.id)
        @owner.update(owner_params)
        redirect_to owner_path(@owner)
    end


    private
    def owner_params
        params.require(:owner).permit(:name, :street, :city, :state, :zip, :phone_number, :email, :username, :password_digest)
    end

end
