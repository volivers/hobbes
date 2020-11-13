# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.all
# @users.each |user| {user.id}

puts 'Cleaning db...'
Booking.destroy_all
Hobby.destroy_all
# User.destroy_all
# Skill.destroy_all
puts 'Cleaned Hobbies...'

categories = ['Hiking', 'Backpacking', 'Camping', 'Hunting', 'Fishing', 'Archery','Canoeing',
'Kayaking', 'Running', 'Geocaching', 'Bird Watching', 'Beekeeping', 'LARPing',
'Parkour', 'Astronomy', 'Kite Flying', 'Bread Making', 'Origami', 'Photography',
'Crocheting', 'Knitting', 'Embroidery', 'Pottery', 'Wood Carving', 'Video Games',
'Board Games', 'Chess', 'Puzzles', 'Table Tennis', 'Billiards', 'Language Learning',
'Creative Writing', 'Book Club', 'Playing an Instrument', 'Podcast Hosting', 'Dancing',
'Computer Programming', 'Travel', 'Cosplaying', 'Survivalist Prepping']
recurrence = ['Daily', 'Weekly', 'Monthly']
weekdays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
# puts 'Creating users...'
# 15.times { User.create!( username: Faker::Name.name, email: Faker::Internet.email, location: Faker::Address.city, password: 123456, bio: Faker::TvShows::Friends.quote)}
puts 'Creating hobbies...'
18.times { Hobby.create!( title: Faker::Book.title, description: Faker::Hipster.paragraph(sentence_count: 10), category: categories.sample, level: (1..3).to_a.sample, location: Faker::Address.city, weekday: weekdays.sample, recurrence: recurrence.sample, user_id: users.ids.sample, occupancy_limit: (1..4).to_a.sample)}


puts 'Creating skills...'
# 50.times { Skill.create!( category: categories.sample, experience: (1..3).to_a.sample, user_id: users.ids.sample)}

puts 'Creating hobbies...'
