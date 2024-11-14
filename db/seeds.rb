# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Cozy Studio in Paris',
  address: '5 Rue de Rivoli, 75004 Paris, France',
  description: 'A charming and cozy studio in the heart of Paris, perfect for a solo traveler or a couple. Walking distance to Notre-Dame and the Seine river.',
  price_per_night: 85,
  number_of_guests: 2
)

Flat.create!(
  name: 'Modern Apartment in Berlin',
  address: 'Alexanderplatz, 10178 Berlin, Germany',
  description: 'Stylish and modern apartment located in the vibrant center of Berlin. Includes a spacious living room, kitchen, and a balcony with city views.',
  price_per_night: 120,
  number_of_guests: 4
)

Flat.create!(
  name: 'Beachside Flat in Barcelona',
  address: 'Carrer de la Marina, 08005 Barcelona, Spain',
  description: 'Enjoy a beachside stay in this modern flat, just steps from the sea. Two bedrooms, fully equipped kitchen, and a large terrace with sea views.',
  price_per_night: 110,
  number_of_guests: 5
)

puts "Finished creating flats!"
