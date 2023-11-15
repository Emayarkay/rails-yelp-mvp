# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "02076221334", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "02568921334", category: "italian"}
hot_dog = {name: "HotDog", address: "78 Tempo St, London W1 8EJ", phone_number: "020768653248", category: "french"}
churros =  {name: "Churros", address: "876 London High St, Bristol DN13 6LK", phone_number: "01653765389", category: "japanese"}
curries = {name: "Curries", address: "98 High St, Ipswich IP9 4FG", phone_number: "01345765298", category: "belgian"}

[dishoom, pizza_east, hot_dog, churros, curries].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
