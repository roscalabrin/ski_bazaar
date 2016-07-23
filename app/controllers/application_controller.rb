class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :selected_ski

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def selected_ski(ski_id)
    @selected_ski = Ski.find(ski_id)
  end

  def current_admin?
    current_user && current_user.admin?
  end

  def valid_user?
    current_user && current_user.admin? == false
  end
end
