# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "json"
# require "open-uri"

puts 'Cleaning database...'
Category.destroy_all
Quest.destroy_all
Goal.destroy_all
puts 'Database cleaned'

puts 'Creation category-database...'
sport = Category.create(name: "Sport", description: "do you want some endorphin?, this category is for you")
cinema = Category.create(name: "Cinema", description: "do you want to know all the best movies?, this category is for you")
puts 'Creation category-database done!'

puts 'Creation quest-database...'
pushup_easy = Quest.create(name: "push-up", rank: 1, description: "do push-up", category: sport)
pushup_medium = Quest.create(name: "push-up", rank: 2, description: "do push-up", category: sport)
pushup_hard = Quest.create(name: "push-up", rank: 3, description: "do push-up", category: sport)
runnning_easy = Quest.create(name: "running", rank: 1, description: "Run as far as possible", category: sport)
runnning_medium = Quest.create(name: "running", rank: 2, description: "Run as far as possible", category: sport)
runnning_hard = Quest.create(name: "running", rank: 3, description: "Run as far as possible", category: sport)
japanese_movies_easy = Quest.create(name: "Japanese movies", rank: 1, description: "check all those movies", category: cinema)
japanese_movies_medium = Quest.create(name: "Japanese movies", rank: 2, description: "check all those movies", category: cinema)
japanese_movies_hard = Quest.create(name: "Japanese movies", rank: 3, description: "check all those movies", category: cinema)
puts 'Creation quests-database done!'

puts 'Creation goal-database...'
Goal.create(
  score: 100,
  threshold: 10,
  quest: pushup_easy
)
Goal.create(
  score: 150,
  threshold: 15,
  quest: pushup_easy
)
Goal.create(
  score: 200,
  threshold: 20,
  quest: pushup_easy
)
Goal.create(
  score: 250,
  threshold: 25,
  quest: pushup_medium
)
Goal.create(
  score: 350,
  threshold: 35,
  quest: pushup_medium
)
Goal.create(
  score: 500,
  threshold: 50,
  quest: pushup_medium
)
Goal.create(
  score: 650,
  threshold: 65,
  quest: pushup_hard
)
Goal.create(
  score: 800,
  threshold: 80,
  quest: pushup_hard
)
Goal.create(
  score: 1000,
  threshold: 100,
  quest: pushup_hard
)
Goal.create(
  score: 100,
  threshold: 2,
  quest: runnning_easy
)
Goal.create(
  score: 100,
  threshold: 5,
  quest: runnning_easy
)
Goal.create(
  score: 100,
  threshold: 7,
  quest: runnning_easy
)
Goal.create(
  score: 100,
  threshold: 10,
  quest: runnning_medium
)
Goal.create(
  score: 100,
  threshold: 15,
  quest: runnning_medium
)
Goal.create(
  score: 100,
  threshold: 22,
  quest: runnning_medium
)
Goal.create(
  score: 100,
  threshold: 28,
  quest: runnning_hard
)
Goal.create(
  score: 39000,
  threshold: 39,
  quest: runnning_hard
)
Goal.create(
  score: 42_000,
  threshold: 42,
  quest: runnning_hard
)
Goal.create(
  score: 1000,
  threshold: 1,
  quest: japanese_movies_easy
)
Goal.create(
  score: 3000,
  threshold: 3,
  quest: japanese_movies_easy
)
Goal.create(
  score: 5000,
  threshold: 5,
  quest: japanese_movies_easy
)
Goal.create(
  score: 7000,
  threshold: 7,
  quest: japanese_movies_medium
)
Goal.create(
  score: 9000,
  threshold: 9,
  quest: japanese_movies_medium
)
Goal.create(
  score: 12_000,
  threshold: 12,
  quest: japanese_movies_medium
)
Goal.create(
  score: 15_000,
  threshold: 15,
  quest: japanese_movies_hard
)
Goal.create(
  score: 25_000,
  threshold: 25,
  quest: japanese_movies_hard
)
Goal.create(
  score: 35_000,
  threshold: 35,
  quest: japanese_movies_hard
)
puts 'Creation goal-database done!'
