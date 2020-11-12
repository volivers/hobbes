# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning db...'
Hobby.destroy_all
puts 'Creating hobbies...'
15.times { User.create!( username: Faker::Name.name, email: Faker::Internet.email, location: Faker::Address.city , password: Faker::Alphanumeric.alphanumeric(number: 10))}
9.times { Hobby.create!( title: Faker::Marketing.buzzwords, description: Faker::Hacker.say_something_smart, category: Faker::Book.genre, level: (1..10).to_a.sample, user_id: (1..10).to_a.sample, occupancy_limit: (1..20).to_a.sample)}
