class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @listing = current_user.listings
  end

  def destroy
    current_user.destroy

    redirect_to listings_path
  end
end
