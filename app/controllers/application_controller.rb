class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :admin?, :require_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin?
    current_user && current_user.admin?
  end

  # def valid_user?
  #   current_user && current_user.admin? == false
  # end

  def require_user
    render file: '/public/404' unless current_user
  end
end
