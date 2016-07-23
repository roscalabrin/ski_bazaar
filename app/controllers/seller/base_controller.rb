class Seller::BaseController < ApplicationController
  before_action :check_regular_user

  def check_regular_user
    render file '/public/404' unless valid_user?
  end

end
