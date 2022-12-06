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
user = User.create!(name: "Buddy", email: "mail@gmail.com", password: "azerty", gold: 392)
puts "#{user.name} created"

puts 'Creating Skins...'
file = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1670245700/Ryan-removebg-preview_kvkyb6.png")
skin = Skin.new(name: "Ryan's Abs", description: "Ryan, c'est le plus bô", price: 200)
skin.photo.attach(io: file, filename: "RyanAbs.png", content_type: "image/jpeg")
skin.save!
puts "#{skin.name} created"

file2 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Superman_hett66.png")
skin2 = Skin.new(name: "Superman", description: "Superman, c'est le plus fort", price: 120)
skin2.photo.attach(io: file2, filename: "Superman.png", content_type: "image/jpeg")
skin2.save!
puts "#{skin2.name} created"

file3 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Goku_clodrz.png")
skin3 = Skin.new(name: "Goku", description: "Goku, c'est le plus vener", price: 100)
skin3.photo.attach(io: file3, filename: "Goku.png", content_type: "image/jpeg")
skin3.save!
puts "#{skin3.name} created"

file6 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Deadpool_vug6im.png")
skin6 = Skin.new(name: "Deadpool", description: "Deadpool, c'est le plus rigolo", price: 90)
skin6.photo.attach(io: file6, filename: "deadpool.png", content_type: "image/jpeg")
skin6.save!
puts "#{skin6.name} created"

file5 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Loki_ztoxtk.png")
skin5 = Skin.new(name: "Loki", description: "Loki, c'est le plus fourbe", price: 70)
skin5.photo.attach(io: file5, filename: "loki.png", content_type: "image/jpeg")
skin5.save!
puts "#{skin5.name} created"

file4 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Jon_Snow_kgfjbp.png")
skin4 = Skin.new(name: "Jon Snow", description: "Jon, c'est celui qui know nothing", price: 10)
skin4.photo.attach(io: file4, filename: "JonSnow.png", content_type: "image/jpeg")
skin4.save!
puts "#{skin4.name} created"

UserSkin.create(user_id: user.id, skin_id: skin4.id, selected: true)

puts 'Creation category-database...'
sport = Category.create!(name: "Sport", description: "Do you want some endorphin? This category is for you")
puts "#{sport.name} done"
cinema = Category.create!(name: "Cinema", description: "Do you want to know all the best movies?, this category is for you")
puts "#{cinema.name} done"
puts "Category-database done!"

puts 'Creation quest-database...'
pushup_description = "To do a push-up, get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Contract your abs and tighten your core by pulling your belly button toward your spine. Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle. Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position. Do as many push-up as you can."
pushup_easy = Quest.create!(name: "Push-up", rank: 1, description: pushup_description, category: sport, reward: 100)
puts "#{pushup_easy.name}, #{pushup_easy.rank} done"
pushup_medium = Quest.create!(name: "Push-up", rank: 2, description: pushup_description, category: sport, reward: 150)
puts "#{pushup_medium.name}, #{pushup_medium.rank} done"
pushup_hard = Quest.create!(name: "Push-up", rank: 3, description: pushup_description, category: sport, reward: 200)
puts "#{pushup_hard.name}, #{pushup_hard.rank} done"

running_description = "To run, you just need to run dummy."
running_easy = Quest.create!(name: "Running", rank: 1, description: running_description, category: sport)
puts "#{running_easy.name}, #{running_easy.rank} done"
running_medium = Quest.create!(name: "Running", rank: 2, description: running_description, category: sport)
puts "#{running_medium.name}, #{running_medium.rank} done"
running_hard = Quest.create!(name: "Running", rank: 3, description: running_description, category: sport)
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
  threshold: 1,
  partial: "mon bout de code",
  quest: pushup_easy
)
Goal.create!(
  score: 150,
  threshold: 2,
  partial: "mon bout de code",
  quest: pushup_easy
)
Goal.create!(
  score: 200,
  threshold: 5,
  partial: "mon bout de code",
  quest: pushup_easy
)
Goal.create!(
  score: 250,
  threshold: 2,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create!(
  score: 350,
  threshold: 5,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create!(
  score: 500,
  threshold: 10,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create!(
  score: 650,
  threshold: 5,
  partial: "mon bout de code",
  quest: pushup_hard
)
Goal.create!(
  score: 800,
  threshold: 12,
  partial: "mon bout de code",
  quest: pushup_hard
)
Goal.create!(
  score: 1000,
  threshold: 25,
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
force = Skill.create!(name: "Strenght", description: 'Muscular capacity or "Muscular power"', max_point: 99, level: 70)
puts "#{force.name} created"
endu = Skill.create!(name: "Stamina", description: "Capacity to last longer during effort", max_point: 99, level: 59)
puts "#{endu.name} created"
cardio = Skill.create!(name: "Cardio", description: "Recovery speed after effort", max_point: 99, level: 28)
puts "#{cardio.name} created"
agilite = Skill.create!(name: "Agility", description: "Ability to move quickly and easily", max_point: 99, level: 59)
puts "#{agilite.name} created"
vitesse = Skill.create!(name: "Speed", description: "Define how fast you are", max_point: 99, level: 12)
puts "#{vitesse.name} created"
souplesse = Skill.create!(name: "Flexibility", description: "Capacity of bending easily without breaking.", max_point: 99, level: 23)
puts "#{souplesse.name} created"
inteligence = Skill.create!(name: "Intelligence", description: "Ability to learn or understand or to deal with new situation", max_point: 99, level: 88)
puts "#{inteligence.name} created"
logique = Skill.create!(name: "Logic", description: "Ability to reason accordingly to strict principles of validity", max_point: 99, level: 37)
puts "#{logique.name} created"
reflexion = Skill.create!(name: "Thinking", description: "Capacity to use thought or rational judgement", max_point: 99, level: 48)
puts "#{reflexion.name} created"
savoir = Skill.create!(name: "Knowledge", description: "Awareness or familiarity gained by experience", max_point: 99, level: 37)
puts "#{savoir.name} created"
spiritualite = Skill.create!(name: "Faith", description: "Capacity to trust someone or something", max_point: 99, level: 8)
puts "#{spiritualite.name} created"
creativite = Skill.create!(name: "Creativity", description: "Capacity of imagination to create something", max_point: 99, level: 32)
puts "#{creativite.name} created"
social = Skill.create!(name: "Social", description: "Capacity to interact with other", max_point: 99, level: 29)
puts "#{social.name} created"
culture = Skill.create!(name: "Culture", description: "Specific knowledge on man-made achievements", max_point: 99, level: 12)
puts "#{culture.name} created"

puts "SEED DONE"
