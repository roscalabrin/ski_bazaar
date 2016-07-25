class SessionsController < ApplicationController
  before_action :logged_in?, only: [:new]

  def logged_in?
    redirect_to skis_path if current_user
  end

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Logged In Successfully!"
      redirect_to skis_path
    else
      flash.now[:alert] = "Invalid login try again"
      render :new
    end
  end

  def destroy
    session.clear
    flash[:notice] = "Successfully logged out"
    redirect_to root_path
  end

end
