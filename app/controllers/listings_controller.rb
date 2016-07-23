class ListingsController < ApplicationController
  # before_action :require_user

  def index
    @listing = Listing.all
  end
  #
  # def create
  #   #find user id and find ski id and add the params from listing form to create the listing
  # end
end
