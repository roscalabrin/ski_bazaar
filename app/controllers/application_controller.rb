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

  def require_user
    render file: '/public/404' unless current_user
  end

  def find_ski_id
    @ski = Ski.find(params[:ski_id])
  end

  def find_ski_brand
    Ski.find(@listing.ski_id).brand
  end

  def find_ski_name
    Ski.find(@listing.ski_id).name
  end
end
