require "open-uri"

puts 'Cleaning database...'
User.destroy_all
Category.destroy_all
Quest.destroy_all
Goal.destroy_all
Skin.destroy_all
Skill.destroy_all
puts 'Database cleaned'

puts 'Creation User...'
user = User.create!(name: "Buddy", email: "mail@gmail.com", password: "azerty", gold: 0)
puts "#{user.name} created"

puts 'Creating Skins...'
file = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669823095/Ryan_lzdmx9.png")
skin = Skin.new(name: "Abs", description: "Ryan, c'est le plus bô", price: 10)
skin.photo.attach(io: file, filename: "RyanAbs.png", content_type: "image/jpeg")
skin.save!
puts "#{skin.name} created"

file2 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Superman_hett66.png")
skin2 = Skin.new(name: "Superman", description: "Superman, c'est le plus fort", price: 10)
skin2.photo.attach(io: file2, filename: "Superman.png", content_type: "image/jpeg")
skin2.save!
puts "#{skin2.name} created"

file3 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Goku_clodrz.png")
skin3 = Skin.new(name: "Goku", description: "Goku, c'est le plus vener", price: 10)
skin3.photo.attach(io: file3, filename: "Goku.png", content_type: "image/jpeg")
skin3.save!
puts "#{skin3.name} created"

file4 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Jon_Snow_kgfjbp.png")
skin4 = Skin.new(name: "JonSnow", description: "Jon, c'est celui qui know nothing", price: 10)
skin4.photo.attach(io: file4, filename: "JonSnow.png", content_type: "image/jpeg")
skin4.save!
puts "#{skin4.name} created"

file5 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Loki_ztoxtk.png")
skin5 = Skin.new(name: "Loki", description: "Loki, c'est le plus fourbe", price: 10)
skin5.photo.attach(io: file5, filename: "loki.png", content_type: "image/jpeg")
skin5.save!
puts "#{skin5.name} created"

puts 'Creation category-database...'
sport = Category.create!(name: "Sport", description: "do you want some endorphin?, this category is for you")
puts "#{sport.name} done"
cinema = Category.create!(name: "Cinema", description: "do you want to know all the best movies?, this category is for you")
puts "#{cinema.name} done"
puts "Category-database done!"

puts 'Creation quest-database...'

pushup_easy = Quest.create!(name: "Push-up", rank: 1, description: "Do as many push-up as you can. Maximum 20 this time", category: sport)
puts "#{pushup_easy.name}, #{pushup_easy.rank} done"
pushup_medium = Quest.create!(name: "Push-up", rank: 2, description: "Do as many push-up as you can. Maximum 50 this time", category: sport)
puts "#{pushup_medium.name}, #{pushup_medium.rank} done"
pushup_hard = Quest.create!(name: "Push-up", rank: 3, description: "Do as many push-up as you can. Maximum 100 this time", category: sport)
puts "#{pushup_hard.name}, #{pushup_hard.rank} done"

running_easy = Quest.create!(name: "Running", rank: 1, description: "Run as far as possible. Maximum 7Km this time", category: sport)
puts "#{running_easy.name}, #{running_easy.rank} done"
running_medium = Quest.create!(name: "Running", rank: 2, description: "Run as far as possible. Maximum 22Km this time", category: sport)
puts "#{running_medium.name}, #{running_medium.rank} done"
running_hard = Quest.create!(name: "Running", rank: 3, description: "Run as far as possible. Maximum 42Km this time", category: sport)
puts "#{running_hard.name}, #{running_hard.rank} done"

japanese_movies_easy = Quest.create!(name: "Japanese movies", rank: 1, description: "check all those movies. Maximum 5 this time", category: cinema)
puts "#{japanese_movies_easy.name}, #{japanese_movies_easy.rank} done"
japanese_movies_medium = Quest.create!(name: "Japanese movies", rank: 2, description: "check all those movies. Maximum 12 this time", category: cinema)
puts "#{japanese_movies_medium.name}, #{japanese_movies_medium.rank} done"
japanese_movies_hard = Quest.create!(name: "Japanese movies", rank: 3, description: "check all those movies. Maximum 35 this time", category: cinema)
puts "#{japanese_movies_hard.name}, #{japanese_movies_hard.rank} done"
puts 'Quests-database created!'

puts 'Creation goal-database...'
Goal.create!(
  score: 100,
  threshold: 10,
  partial: "mon bout de code",
  quest: pushup_easy
)
Goal.create!(
  score: 150,
  threshold: 15,
  partial: "mon bout de code",
  quest: pushup_easy
)
Goal.create!(
  score: 200,
  threshold: 20,
  partial: "mon bout de code",
  quest: pushup_easy
)
Goal.create!(
  score: 250,
  threshold: 25,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create!(
  score: 350,
  threshold: 35,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create!(
  score: 500,
  threshold: 50,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create!(
  score: 650,
  threshold: 65,
  partial: "mon bout de code",
  quest: pushup_hard
)
Goal.create!(
  score: 800,
  threshold: 80,
  partial: "mon bout de code",
  quest: pushup_hard
)
Goal.create!(
  score: 1000,
  threshold: 100,
  partial: "mon bout de code",
  quest: pushup_hard
)
Goal.create!(
  score: 100,
  threshold: 2,
  partial: "mon bout de code",
  quest: running_easy
)
Goal.create!(
  score: 100,
  threshold: 5,
  partial: "mon bout de code",
  quest: running_easy
)
Goal.create!(
  score: 100,
  threshold: 7,
  partial: "mon bout de code",
  quest: running_easy
)
Goal.create!(
  score: 100,
  threshold: 10,
  partial: "mon bout de code",
  quest: running_medium
)
Goal.create!(
  score: 100,
  threshold: 15,
  partial: "mon bout de code",
  quest: running_medium
)
Goal.create!(
  score: 100,
  threshold: 22,
  partial: "mon bout de code",
  quest: running_medium
)
Goal.create!(
  score: 100,
  threshold: 28,
  partial: "mon bout de code",
  quest: running_hard
)
Goal.create!(
  score: 39000,
  threshold: 39,
  partial: "mon bout de code",
  quest: running_hard
)
Goal.create!(
  score: 42_000,
  threshold: 42,
  partial: "mon bout de code",
  quest: running_hard
)
Goal.create!(
  score: 1000,
  threshold: 1,
  partial: "mon bout de code",
  quest: japanese_movies_easy
)
Goal.create!(
  score: 3000,
  threshold: 3,
  partial: "mon bout de code",
  quest: japanese_movies_easy
)
Goal.create!(
  score: 5000,
  threshold: 5,
  partial: "mon bout de code",
  quest: japanese_movies_easy
)
Goal.create!(
  score: 7000,
  threshold: 7,
  partial: "mon bout de code",
  quest: japanese_movies_medium
)
Goal.create!(
  score: 9000,
  threshold: 9,
  partial: "mon bout de code",
  quest: japanese_movies_medium
)
Goal.create!(
  score: 12_000,
  threshold: 12,
  partial: "mon bout de code",
  quest: japanese_movies_medium
)
Goal.create!(
  score: 15_000,
  threshold: 15,
  partial: "mon bout de code",
  quest: japanese_movies_hard
)
Goal.create!(
  score: 25_000,
  threshold: 25,
  partial: "mon bout de code",
  quest: japanese_movies_hard
)
Goal.create(
  score: 35_000,
  threshold: 35,
  partial: "mon bout de code",
  quest: japanese_movies_hard
)
puts Goal.count.to_s
puts 'Goal-database done!'

puts 'Creating Skills...'
force = Skill.create!(name: "Force", description: 'Capacité musculaire ou "puissance" des muscles', max_point: 99, level: 10)
puts "#{force.name} created"
endu = Skill.create!(name: "Endurance", description: "Capacité à maintenir un effort dans la durée", max_point: 99, level: 10)
puts "#{endu.name} created"
cardio = Skill.create!(name: "Cardio", description: "Capacité de récuperation après un effort", max_point: 99, level: 10)
puts "#{cardio.name} created"

puts "SEED DONE"
