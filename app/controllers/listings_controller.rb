class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  # selecting all the listing to show them to the index page.
  def index
    @listing = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  # creating a new listing. Need to use different methods depending on the type of relationship that the model has.
  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    @listing.grape_listings.build(grape_id: params[:listing][:grape_id])
    @listing.wine_type_id = params[:listing][:wine_type_id]

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

  # updating a previous list item, and using different methods to build and adding the ability to add multiple grape varieties.
  def update
    grape = Grape.find(params[:listing][:grape_id])
    unless @listing.grapes.pluck(:grape_type).include?(grape.grape_type)
      @listing.grape_listings.build(grape_id: params[:listing][:grape_id])
    end
    @listing.wine_type_id = params[:listing][:wine_type_id]

    if @listing.update(listing_params)
      redirect_to @listing
    else
      render :new
    end
  end

  # destroying a listing item. Then redirecting to the listing path
  def destroy
    @listing.destroy

    redirect_to listings_path
  end

  private

  # creating strong params which tell rails what parameters to expect and what should be allowed. Allows for data integrity
  def listing_params
    params.require(:listing).permit(:name, :vintage, :region, :notes, :description, :alcohol, :size, :price, :picture)
  end

  # refactoring code, so i dont have to use .find multiple times within the controller.
  def find_listing
    @listing = Listing.find(params[:id])
  end
end
