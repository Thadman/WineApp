class ListingsController < ApplicationController
  # root to: 'welcome#index'

  def index
    @listing = Listing.all
  end

  def show
    @listing = listing.find(params[:id])
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
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)

    redirect_to @listing
  end

  def destroy
    @listing.destroy

    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :vintage, :region, :grape, :notes, :description, :alcohol, :size, :wine_type, :price)
  end

  
end

