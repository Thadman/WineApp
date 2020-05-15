class ListingsController < ApplicationController
  
  before_action :find_listing, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user! , except: [:index, :show]
  load_and_authorize_resource


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
    @listing.user = current_user
    @listing.grape_listings.build(grape_id: params[:listing][:grape_id])
    @listing.wine_type_id = params[:listing][:wine_type_id]
    # p @listing.errors.full_messages
    
      if @listing.errors.any?
        render :new
      else
        flash[:success] = "You successfully created a new listing!"
        @listing.save
        redirect_to @listing
      end
  end

  
  def edit
  end

  def update
    grape = Grape.find(params[:listing][:grape_id])
    unless @listing.grapes.pluck(:grape_type).include?(grape.grape_type)
      @listing.grape_listings.build(grape_id: params[:listing][:grape_id])
    end
    @listing.wine_type_id = params[:listing][:wine_type_id]
# p @listing
    if @listing.update(listing_params)
      redirect_to @listing
    else
      render :new
    end
  end

  def destroy
    @listing.destroy

    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :vintage, :region, :notes, :description, :alcohol, :size, :price, :picture)
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end

end

