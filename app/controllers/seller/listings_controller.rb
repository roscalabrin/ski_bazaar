class Seller::ListingsController < Seller::BaseController

  def index
    @listing = current_user.listings
  end

  def new
    @listing = Listing.new
    @ski = Ski.find(params[:ski_id])
  end

  def create
    @listing = current_user.listings.create(listing_params)
    if @listing.save
      redirect_to listings_path
    else
      render :new
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def listing_params
    attributes = params.require(:seller).permit(:price, :image)
    attributes["ski_id"] = params.require(:ski_id).to_i
    attributes
  end

end
