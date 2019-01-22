class SessionsController < ApplicationController

  def new
  end

  def create
    @owner = Owner.find_by(username: params[:username])
    if @owner && @owner.authenitcate(params[:password])
      session[:owner_id] = @owner.id
      redirect_to vehicles_path
    else
      @error = "Login failed"
      render :new
    end
  end

  def destroy
    session[:person_id] = nil
    redirect_to login_path
  end
end
