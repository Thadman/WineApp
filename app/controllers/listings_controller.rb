class ListingsController < ApplicationController
  before_action :find_listing, only:[:show, :edit, :update, :destroy]

  def index
    @listing = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save

    redirect_to @listing
  end

  def edit
  end

  def update
    @listing.update(listing_params)

    redirect_to @listing
  end

  def destroy
    @listing.destroy

    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :vintage, :region, :grape, :notes, :description, :alcohol, :size, :price)
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end

end

