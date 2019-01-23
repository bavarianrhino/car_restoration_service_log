class ApplicationController < ActionController::Base
  helper_method :current_user


  def current_user
    return nil unless session[:owner_id]
    @current_user ||= Owner.find(session[:owner_id])
  end
  
  def authorize!
    unless current_user
      flash[:notice] = "Please login."
      return redirect_to login_path
    end
  end


end
