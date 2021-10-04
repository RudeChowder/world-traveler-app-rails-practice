# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Traveler.destroy_all
Country.destroy_all

10.times do
  Traveler.create(name: Faker::Name.unique.name, age: rand(18..65))
  Country.create(name: Faker::Address.unique.country, description: Faker::Lorem.sentence)
end

20.times do
  Vacation.create(traveler_id: Traveler.ids.sample, country_id: Country.ids.sample, favorite: true)
  Vacation.create(traveler_id: Traveler.ids.sample, country_id: Country.ids.sample, favorite: false)
end
