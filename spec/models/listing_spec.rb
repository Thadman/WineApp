require 'rails_helper'

RSpec.describe Listing, type: :model do
  subject { described_class.new(
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

  it 'is valid with valid attributes' do 
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a price less than 0' do
    subject.price = 0
    expect(subject).to_not be_valid
  end

end


