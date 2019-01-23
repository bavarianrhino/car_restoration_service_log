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

    private
    def set_cache_headers
      response.headers["Cache-Control"] = "no-cache, no-store"
      response.headers["Pragma"] = "no-cache"
      response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
    end

end
