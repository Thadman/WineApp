module ListingsHelper
  
  def picture_for(listing)
    if listing.picture.present?
      listing.picture
    else
      'wine1.png'
    end
  end

end
