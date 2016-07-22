class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to skis_path
    # else
      # either user doesn't exists or password is incorrect
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
