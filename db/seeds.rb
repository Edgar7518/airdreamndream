# This file should contain all the record creation needed to seed the database with its default values.
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

Location.destroy_all
Dream.destroy_all
Category.destroy_all
User.destroy_all
puts "done !"

print "creating category..."
categories = %w[horror romantic coding travel eating sport concerts retirement time gladiator movie erotic]
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
  Dream.create!(
    name: "Lost in the woods",
    description: "One night lost in the woods while you try to impress the girl you love",
    price: 50,
    duration: 45,
    category: Category.find_by(name: "horror"),
    user: User.find_by(email: "yuhecny@gmail.com")
  )

puts "done!"
print "creating horror dreams..."
  Dream.create!(
    name: "A day with your mother in law",
    description: "Fulfill your dream of bothering your mother-in-law as if it were in real life",
    price: 500,
    duration: 2,
    category: Category.find_by(name: "horror"),
    user: User.find_by(email: "yuhecny@gmail.com")
  )

puts "done!"
print "creating coding dreams..."
  Dream.create!(
    name: "coding in one day",
    description: "Coding a complete application in one day without any errors",
    price: 1000,
    duration: 2,
    category: Category.find_by(name: "coding"),
    user: User.find_by(email: "estelle@gmail.com")
  )

puts "done!"
print "creating coding dreams..."
  Dream.create!(
    name: "coding life",
    description: "Be the best programmer you can create your life with just one app",
    price: 45,
    duration: 2,
    category: Category.find_by(name: "coding"),
    user: User.find_by(email: "estelle@gmail.com")
  )

puts "done!"
print "creating romantic dreams..."
  Dream.create!(
    name: "The perfect dates",
    description: "Five dates with five different people in the same day",
    price: 150,
    duration: 5,
    category: Category.find_by(name: "romantic"),
    user: User.find_by(email: "edgar@gmail.com")
  )

puts "done!"
print "creating romantic dreams..."
  Dream.create!(
    name: "A picnic with your crush",
    description: "Sunny day to have a picnic in the central park with your crush",
    price: 100,
    duration: 2,
    category: Category.find_by(name: "romantic"),
    user: User.find_by(email: "edgar@gmail.com")
  )

puts "done!"
print "creating travel dreams..."
  Dream.create!(
    name: "Trip to thailand",
    description: "A relaxing week trip on the beaches of thailand with your favorite person",
    price: 500,
    duration: 4,
    category: Category.find_by(name: "travel"),
    user: User.find_by(email: "concorde@gmail.com")
  )

puts "done!"
print "creating travel dreams..."
  Dream.create!(
    name: "Travel to europe by train with your best friends",
    description: "The trip you always wanted in the company of your three best friends",
    price: 40,
    duration: 4,
    category: Category.find_by(name: "travel"),
    user: User.find_by(email: "concorde@gmail.com")
  )

puts "done!"
print "eating dreams..."
  Dream.create!(
    name: "All you can eat",
    description: "All night eating at your favorite restaurants, without ending up sick",
    price: 60,
    duration: 4,
    category: Category.find_by(name: "eating"),
    user: User.find_by(email: "concorde@gmail.com")
  )

puts "done!"
print "eating dreams..."
  Dream.create!(
    name: "Cooking class",
    description: "Tired of your food burning? Have a cooking class with the most famous chef in montreal, just for you",
    price: 35,
    duration: 3,
    category: Category.find_by(name: "eating"),
    user: User.find_by(email: "concorde@gmail.com")
  )

puts "done!"
print "creating sport dreams..."
  Dream.create!(
    name: "Match Tenis",
    description: "Beat the number one tennis player Roger Federer",
    price: 250,
    duration: 3,
    category: Category.find_by(name: "sport"),
    user: User.find_by(email: "yuhecny@gmail.com")
  )

puts "done!"
print "creating sport dreams..."
  Dream.create!(
    name: "The world Cup",
    description: "Live the world cup from your dreams in the comfort of your home, close your eyes and go directly to qatar and play with your favorite team",
    price: 120,
    duration: 2,
    category: Category.find_by(name: "sport"),
    user: User.find_by(email: "yuhecny@gmail.com")
  )

puts "done!"
print "creating concerts dreams..."
  Dream.create!(
    name: "Mariah carey concert",
    description: "Backstage tickets and the chance to meet Mariah Carey before seeing her concert in the front row",
    price: 80,
    duration: 2,
    category: Category.find_by(name: "concerts"),
    user: User.find_by(email: "edgar@gmail.com")
  )

puts "done!"
print "creating retirement dreams..."
  Dream.create!(
    name: "A year on a retiree cruise",
    description: "The retirement of your dreams in the perfect cruise with your retired friends, drinking mimosas and playing poker",
    price: 350,
    duration: 2,
    category: Category.find_by(name: "retirement"),
    user: User.find_by(email: "concorde@gmail.com")
  )

puts "done!"
print "time dreams..."
  Dream.create!(
    name: "Return to the past",
    description: "Go back to your favorite childhood day",
    price: 80,
    duration: 3,
    category: Category.find_by(name: "time"),
    user: User.find_by(email: "edgar@gmail.com")
  )

puts "done!"
print "gladiator dreams..."
  Dream.create!(
    name: "Gladiator fights",
    description: "Fight between gladiators and stay with the title of the best warrior",
    price: 30,
    duration: 1,
    category: Category.find_by(name: "gladiator"),
    user: User.find_by(email: "edgar@gmail.com")
  )

puts "done!"
print "movie dreams..."
  Dream.create!(
    name: "I am a legend",
    description: "Be the protagonist of the in the movies of your dreamsa, movie with the actor of your choice",
    price: 50,
    duration: 1,
    category: Category.find_by(name: "movie"),
    user: User.find_by(email: "yuhecny@gmail.com")
  )

puts "done!"
print "erotic..."
  Dream.create!(
    name: "One night in paradise",
    description: "The experience you need to have a different night",
    price: 90,
    duration: 2,
    category: Category.find_by(name: "erotic"),
    user: User.find_by(email: "yuhecny@gmail.com")
  )

puts "done!"

# Location.create(
#   dream: Dream.find(1),
#   user: User.find_by(email: "concorde@gmail.com"),
#   comment: "test",
#   status: 0
# )

puts "All done!"

