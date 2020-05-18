class PagesController < ApplicationController
  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "No results for this sorry!") and return
    else
      @parameter = params[:search].downcase
      @results = Listing.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    end
  end
end