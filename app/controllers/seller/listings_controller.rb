class Seller::ListingsController < Seller::BaseController

  def new
    @listing = Listing.new
  end

  def create
    byebug
    # current_user.listings.create(ski_id: id, listing_params)
  end

  private

  def listing_params
    params.require(:seller).permit(:price, :image)
  end
end
