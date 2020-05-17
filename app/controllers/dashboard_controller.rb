class DashboardController < ApplicationController
  def index
    @listing = current_user.listings
  end
end
