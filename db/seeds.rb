require_relative "data/data"

Listing.destroy_all
User.destroy_all

puts "seeding users"

user_one = User.create(name: 'John Doe', email: 'test-user1@wine.com', age: '33')
user_two = User.create(name: 'Jane Doe', email: 'test-user2@wine.com', age: '19')

puts "seeding wine listings"

listings.each do |listing|
  listing_record = Listing.create(listing)
end

puts "seeded wines 🍷"

puts "seeding grapes"

grape_data.each do |grape|
  grape_record = Grape.create(grape)
end

puts "seeded grapes 🍇"

puts "seeding wine types"

# wine_type.each do |wine|
#   wine_record = Wine_type.create(wine)
# end

# puts "seeded wine types"





  


