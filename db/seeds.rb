# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('a.csv', headers: true, converters: :all) do |row|
    data = row.to_hash
    haunt = Haunt.create(name: data['location'], description: data['description'])
    HauntsLocation.create(city: data['city'], state: data['state'], state_abbrev: data['state_abbrev'], latitude: data['latitude'], longitude: data['longitude'], haunts_id: haunt.id)
end