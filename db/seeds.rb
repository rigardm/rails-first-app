# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Hotel.destroy_all
Room.destroy_all

puts "Creating the hotel..."
plazza = { name: "Plazza", address: "7 boulevard du printemps", city: "Paris", country: "France" }
# hilton = { name: "Hilton", address: "villa Gaudelet", city: "Paris", country: "France" }
# zeina = { name: "Zeina ", address: "42 avenue de la République", city: "Paris", country: "France" }


plazza.each do |attributes|
hotel = Hotel.create!(attributes)
puts "Created #{hotel.name}"
end

puts "Creating rooms at Plazza ..."

Room.create!(
  hotel: hotel.id,
  number: 1,
  capacity: 4,
  daily_price: 120)

Room.create!(
  hotel: hotel.id,
  number: 2,
  capacity: 4,
  daily_price: 120)

Room.create!(
  hotel: hotel.id,
  number: 3,
  capacity: 2,
  daily_price: 70)

puts "created #{Room.count} #{'room'.pluralize(Room.count)}"

puts "Finished!"
