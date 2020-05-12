require 'rails_helper'

RSpec.describe GrapeListing, type: :model do
  let(:listing) { Listing.create(
    name: 'Test Wine',
    vintage: '2018',
    region: 'Yarra Valley',
    grape: 'Shiraz',
    notes: 'the wine tastes good and it pairs well with this blah blah blah',
    description: 'the wine is tasty and it contains this grape, it pairs well with this blah bla blah',
    alcohol: '12.5%', 
    size: '800ml', 
    wine_type: 'Red',
    price: 12
  ) }
  let(:grape) { Listing.create(
    grape_type: 'Test grape'
  )}

  subject{ GrapeListing.new(
    listing_id: listing.id,
    grape_id: grape.id
  )}

  it 'belongs to a listing' do
  relation = GrapeListing.reflect_on_association(:listing)
  expect(relation.macro).to eql(:belongs_to)
end
end

