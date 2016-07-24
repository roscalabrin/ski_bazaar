class ListingsController < ApplicationController
  before_filter :require_user

  def index
    @listing = Listing.all
  end

  # def show
  #   @listing = Listing.find(params[:id])
  # end
end
