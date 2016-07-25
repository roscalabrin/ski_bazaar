class Seller::ListingsController < Seller::BaseController

  def index
    @listing = current_user.listings
  end

  def new
    @listing = Listing.new
    find_ski_id
  end

  def create
    @listing = current_user.listings.create(listing_params)
    if @listing.save
      find_ski_id
      redirect_to seller_ski_listing_path(@ski, @listing)
    else
      find_ski_id
      flash[:alert] = "The information you provided was invalid. Please try again."
      render :new
    end
  end

  def show
    session[:hit_counter] = session[:hit_counter].to_i + 1
    @listing = Listing.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def listing_params
    params.require(:seller).permit(:price, :image).merge(ski_id: params.require(:ski_id).to_i)
  end

end
