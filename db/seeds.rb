require_relative "data/data"

Listing.destroy_all
Grape.destroy_all
WineType.destroy_all
User.destroy_all

puts "seeding users"

user_one = User.create(name: 'John Doe', email: 'test-user1@wine.com', age: '33', password: 'password')
user_two = User.create(name: 'Jane Doe', email: 'test-user2@wine.com', age: '19', password: 'password')

wine_type.each do |wine|
  wine_record = WineType.create(wine)
end


puts "seeding wine listings"

listings.each do |listing|
p listing
  # random_num = rand(1..5)
  listing_record = Listing.new(listing)
  listing_record.user_id = user_one.id
  listing_record.wine_type_id = WineType.first.id
 p listing_record.errors.full_messages
  listing_record.save
end

puts "seeded wines 🍷"

puts "seeding photos 📸"

listings.each do |listing| 
  random_num = rand(1..5)
  listing = Listing.create(listing)
  listing.picture.attach(
    io: File.open("app/assets/images/wine#{random_num}.png"),
    filename: "wine#{random_num}.png",
    content_type: "image/png"
  )
end

puts "seeded photos 📸"

puts "seeding grapes"

grape_data.each do |grape|
  grape_record = Grape.create(grape)
end

puts "seeded grapes 🍇"

puts "seeding wine types"


puts "seeded wine types"