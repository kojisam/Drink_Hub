# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Destroy all records"
# Order.destroy_all
# Drink.destroy_all
# User.destroy_all
# puts "Done"
puts "Creating test user"
User.create!(
  email: "koji@lewagon.com",
  password: "hello123"
)
# puts "Done"
# puts "Creating 50 drinks"
# 10.times do
#   file = URI.open(Faker::LoremFlickr.image(search_terms: ['sodacan']))
#   i = 1
#   object = Drink.new(
#     name: Faker::Kpop.iii_groups,
#     description: Faker::Lorem.sentences,
#     stock_level: rand(50..100),
#     price: rand(2..10),
#     user: User.first
#   )
#   object.photo.attach(io: file, filename:"#{i}_image.jpg", content_type: "image/jpg")
#   object.save!
#   i += 1
# end
# puts "Done"
# puts "Creating 10 orders"
# 10.times do
#   Order.create!(
#     quantity: rand(1..10),
#     drink: Drink.all.sample,
#     user: User.first
#   )
# end
# puts "Done"
