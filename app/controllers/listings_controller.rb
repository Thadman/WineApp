class ListingsController < ApplicationController
  resources :listings
  root to: 'welcome#index'

  def index
    @listing = Listing.all
  end

  def show
    @listing = listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :vintage, :region, :grape, :notes, :description, :alcohol, :size, :wine_type, :price)
  end
end
