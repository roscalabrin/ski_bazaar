class User < ActiveRecord::Base
  has_secure_password
  has_many :listings, class_name: "SkisUser"
  has_many :skis, through: :listings, class_name: "SkisUser"

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
