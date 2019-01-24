class SessionsController < ApplicationController

  def new
    if current_user.id.present?
      redirect_to(owner_path(current_user.id))
    end
  end

  def create
    @owner = Owner.find_by(username: params[:username])
    # if @owner && @owner.authenticate(params[:password])
    if @owner && params[:password] == @owner.password_digest
      session[:owner_id] = @owner.id
      redirect_to vehicles_path
    else
      @error = "Login failed"
      render :new
    end
  end

  def destroy
    session[:owner_id] = nil
    redirect_to login_path
  end
end
