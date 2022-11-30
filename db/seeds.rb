puts 'Cleaning database...'
Category.destroy_all
Quest.destroy_all
Goal.destroy_all
puts 'Database cleaned'

puts 'Creation category-database...'
sport = Category.create(name: "Sport", description: "do you want some endorphin?, this category is for you")
puts "#{sport.name} done"
cinema = Category.create(name: "Cinema", description: "do you want to know all the best movies?, this category is for you")
puts "#{cinema.name} done"
puts "Category-database done!"

puts 'Creation quest-database...'
pushup_easy = Quest.create(name: "Push-up", rank: 1, description: "Do as many push-up as you can", category: sport)
puts "#{pushup_easy.name}, #{pushup_easy.rank} done"
pushup_medium = Quest.create(name: "Push-up", rank: 2, description: "Do as many push-up as you can", category: sport)
puts "#{pushup_medium.name}, #{pushup_medium.rank} done"
pushup_hard = Quest.create(name: "Push-up", rank: 3, description: "Do as many push-up as you can", category: sport)
puts "#{pushup_hard.name}, #{pushup_hard.rank} done"

running_easy = Quest.create(name: "Running", rank: 1, description: "Run as far as possible", category: sport)
puts "#{running_easy.name}, #{running_easy.rank} done"
running_medium = Quest.create(name: "Running", rank: 2, description: "Run as far as possible", category: sport)
puts "#{running_medium.name}, #{running_medium.rank} done"
running_hard = Quest.create(name: "Running", rank: 3, description: "Run as far as possible", category: sport)
puts "#{running_hard.name}, #{running_hard.rank} done"

japanese_movies_easy = Quest.create(name: "Japanese movies", rank: 1, description: "check all those movies", category: cinema)
puts "#{japanese_movies_easy.name}, #{japanese_movies_easy.rank} done"
japanese_movies_medium = Quest.create(name: "Japanese movies", rank: 2, description: "check all those movies", category: cinema)
puts "#{japanese_movies_medium.name}, #{japanese_movies_medium.rank} done"
japanese_movies_hard = Quest.create(name: "Japanese movies", rank: 3, description: "check all those movies", category: cinema)
puts "#{japanese_movies_hard.name}, #{japanese_movies_hard.rank} done"
puts 'Quests-database created!'

puts 'Creation goal-database...'
Goal.create(
  score: 100,
  threshold: 10,
  partial: "mon bout de code",
  quest_id: pushup_easy
)
Goal.create(
  score: 150,
  threshold: 15,
  partial: "mon bout de code",
  quest: pushup_easy
)
Goal.create(
  score: 200,
  threshold: 20,
  partial: "mon bout de code",
  quest: pushup_easy
)
Goal.create(
  score: 250,
  threshold: 25,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create(
  score: 350,
  threshold: 35,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create(
  score: 500,
  threshold: 50,
  partial: "mon bout de code",
  quest: pushup_medium
)
Goal.create(
  score: 650,
  threshold: 65,
  partial: "mon bout de code",
  quest: pushup_hard
)
Goal.create(
  score: 800,
  threshold: 80,
  partial: "mon bout de code",
  quest: pushup_hard
)
Goal.create(
  score: 1000,
  threshold: 100,
  partial: "mon bout de code",
  quest: pushup_hard
)
Goal.create(
  score: 100,
  threshold: 2,
  partial: "mon bout de code",
  quest: running_easy
)
Goal.create(
  score: 100,
  threshold: 5,
  partial: "mon bout de code",
  quest: running_easy
)
Goal.create(
  score: 100,
  threshold: 7,
  partial: "mon bout de code",
  quest: running_easy
)
Goal.create(
  score: 100,
  threshold: 10,
  partial: "mon bout de code",
  quest: running_medium
)
Goal.create(
  score: 100,
  threshold: 15,
  partial: "mon bout de code",
  quest: running_medium
)
Goal.create(
  score: 100,
  threshold: 22,
  partial: "mon bout de code",
  quest: running_medium
)
Goal.create(
  score: 100,
  threshold: 28,
  partial: "mon bout de code",
  quest: running_hard
)
Goal.create(
  score: 39000,
  threshold: 39,
  partial: "mon bout de code",
  quest: running_hard
)
Goal.create(
  score: 42_000,
  threshold: 42,
  partial: "mon bout de code",
  quest: running_hard
)
Goal.create(
  score: 1000,
  threshold: 1,
  partial: "mon bout de code",
  quest: japanese_movies_easy
)
Goal.create(
  score: 3000,
  threshold: 3,
  partial: "mon bout de code",
  quest: japanese_movies_easy
)
Goal.create(
  score: 5000,
  threshold: 5,
  partial: "mon bout de code",
  quest: japanese_movies_easy
)
Goal.create(
  score: 7000,
  threshold: 7,
  partial: "mon bout de code",
  quest: japanese_movies_medium
)
Goal.create(
  score: 9000,
  threshold: 9,
  partial: "mon bout de code",
  quest: japanese_movies_medium
)
Goal.create(
  score: 12_000,
  threshold: 12,
  partial: "mon bout de code",
  quest: japanese_movies_medium
)
Goal.create(
  score: 15_000,
  threshold: 15,
  partial: "mon bout de code",
  quest: japanese_movies_hard
)
Goal.create(
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
