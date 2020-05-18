class DashboardController < ApplicationController
  def index
    @listing = current_user.listings.paginate(page: params[:page], per_page: 6)
  end
end