require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(
    name: 'John Doe',
    age: '18',
    email: 'johndoe@emial.com'
  ) }

    it 'is valid with valid attributes' do 
    expect(subject).to be_valid
  end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an age' do
      subject.age = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do 
      subject.email = nil
      expect(subject).to_not be_valid
    end
end
