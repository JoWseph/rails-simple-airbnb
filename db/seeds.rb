require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

puts 'We are on the way to create 100 flats..'
100.times do
  flat = Flat.new
  flat.name = Faker::Artist.name
  flat.address = Faker::Address.full_address
  flat.description = Faker::Restaurant.description
  flat.price_per_night = rand(100..1500)
  flat.number_of_guests = rand(2..10)
  flat.save!
end

puts 'DONE SEEDING YOUR DB MASTER !'
