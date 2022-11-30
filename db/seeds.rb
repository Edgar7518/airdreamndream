# This file should contain all the record creation needed to  the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# dream = Dream.new(name: "NES", body: "A great console")
# dream.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# dream.save
print "Cleaning..."

Dream.destroy_all
Category.destroy_all
User.destroy_all
puts "done !"

print "creating category..."
categories = %w[horror romantic coding travel eating]
categories.each do |category|
  Category.create!(name: category)
end

puts "done!"

print "creating users..."
users = %w[yuhecny edgar concorde estelle]
users.each do |user|
  User.create!(
    email: "#{user}@gmail.com",
    password: "123456"
  )
end

puts "done!"
print "creating horror dreams..."
5.times do
  Dream.create!(
    name: Faker::TvShows::RuPaul.quote,
    description: Faker::Lorem.paragraph_by_chars,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    duration: Faker::Number.number(digits: 3),
    category: Category.find_by(name: "horror"),
    user: User.find_by(email: "yuhecny@gmail.com")
  )
end
puts "done!"

print "creating coding dreams..."
5.times do
  Dream.create!(
    name: Faker::TvShows::RuPaul.quote,
    description: Faker::Lorem.paragraph_by_chars,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    duration: Faker::Number.number(digits: 3),
    category: Category.find_by(name: "coding"),
    user: User.find_by(email: "estelle@gmail.com")
  )
end
puts "done!"
print "creating romantic dreams..."
5.times do
  Dream.create!(
    name: Faker::TvShows::RuPaul.quote,
    description: Faker::Lorem.paragraph_by_chars,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    duration: Faker::Number.number(digits: 3),
    category: Category.find_by(name: "romantic"),
    user: User.find_by(email: "edgar@gmail.com")
  )
end
puts "done!"
print "creating travel dreams..."
5.times do
  Dream.create!(
    name: Faker::TvShows::RuPaul.quote,
    description: Faker::Lorem.paragraph_by_chars,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    duration: Faker::Number.number(digits: 3),
    category: Category.find_by(name: "travel"),
    user: User.find_by(email: "concorde@gmail.com")
  )
end
puts "done!"
puts "All done!"

Location.create(
dream: Dream.find(1),
user: User.find_by(email: "concorde@gmail.com"),
comment: "test",
status: 0
)
