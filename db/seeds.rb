# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "json"
# require "open-uri"

# puts 'Cleaning database...'
# User.destroy_all
# Prestation.destroy_all
# puts 'Database cleaned'

# # url = "https://www.superheroapi.com/api.php/10229599919482949/"
# puts "Importing 10 random sports"
# 10.times do

#   10.times do
#     new_sport = Sport.new(
#       title: Faker::Sports.sport,
#       content: Faker::Lorem
#       )
#     new_article.save!
#   end
#   puts 'Finished!'

#   random_id_hero = rand(1..731).to_i
#   buddies = JSON.parse(URI.open("#{url}#{random_id_hero}").read)
#   puts "Creating #{buddies['name']}"
#   User.create!(
#     name: buddies['name'],
#     description: buddies['connections'].first,
#     #photo: photo.attach(io: buddies['image'].first, filename: "#{buddies['name']}.png", content_type: "image/png"),
#     email: "mail#{random_id_hero}@mail.com",
#     password: "azerty"
#   )
#   puts "Created some prestations"
# end
# User.create!(
#   name: "bonjour",
#   description: "C'est une super description que voilà",
#   #photo: cl_image_tag("PHILIPPE-ETCHEBEST-e1606153576338_uoanmf", crop: :thumb, gravity: :face),
#   email: "mail@mail.com",
#   password: "azerty"
# )

# puts "Importing une prestations"
# Prestation.create!(
#   name: "Solo de Trompette",
#   description: "Pouet Pouet Pouet Pouet Pouet Pouet",
#   price: 9.99,
#   user_id: User.last.id
# )
# puts "Created one prestation"
# puts 'Finished!'
