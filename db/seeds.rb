# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('app/assets/data/haunted_places_test_data_2.csv', headers: true, converters: :all) do |row|
        data = row.to_hash
        haunt = Haunt.new(name: data['location'], description: data['description'])
        haunt.save
        haunt.build_haunts_location(city: data['city'], state: data['state'], state_abbrev: data['state_abbrev'], latitude: data['latitude'], longitude: data['longitude'])
        haunt.save
end

User.create(email: 'test_user1@gmail.com', password: 'password123');
User.create(email: 'test_user2@gmail.com', password: 'password123');
User.create(email: 'test_user3@gmail.com', password: 'password123');