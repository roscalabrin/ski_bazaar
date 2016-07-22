class User < ActiveRecord::Base
  has_secure_password
  has_many :user_skis
  has_many :skis, through: :user_skis

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @used.id
      redirect_to @user
    else
      render :new
    end
  end


end
