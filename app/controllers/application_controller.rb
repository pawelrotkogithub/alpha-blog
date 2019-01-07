class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  helper_method :current_user, :logged_in?

  def current_user
    # This code is responisble for session, looking for user stored in browser
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # Converstion for boolean
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be looged in to perform that action"
      redirect_to root_path
    end
  end
end
