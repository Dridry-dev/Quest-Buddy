require "open-uri"

# ----------------- CLEANING SEED -----------------

puts 'Cleaning database...'
User.destroy_all
Category.destroy_all
Quest.destroy_all
Goal.destroy_all
Skin.destroy_all
Skill.destroy_all
UserGoal.destroy_all
UserQuest.destroy_all
UserSkill.destroy_all
GoalSkill.destroy_all
puts 'Database cleaned'

# ----------------- CREATING USERS -----------------

puts 'Creation User...'
user = User.create!(name: "Buddy", email: "mail@gmail.com", password: "azerty", gold: 100)
puts "#{user.name} created"

# ----------------- CREATING SKILLS -----------------

puts 'Creating Skills...'
force = Skill.create!(name: "Strenght", description: 'Muscular capacity or "Muscular power"')
puts "#{force.name} created"
endu = Skill.create!(name: "Stamina", description: "Capacity to last longer during effort")
puts "#{endu.name} created"
cardio = Skill.create!(name: "Cardio", description: "Recovery speed after effort")
puts "#{cardio.name} created"
agilite = Skill.create!(name: "Agility", description: "Ability to move quickly and easily")
puts "#{agilite.name} created"
vitesse = Skill.create!(name: "Speed", description: "Define how fast you are")
puts "#{vitesse.name} created"
souplesse = Skill.create!(name: "Flexibility", description: "Capacity of bending easily without breaking.")
puts "#{souplesse.name} created"
inteligence = Skill.create!(name: "Intelligence", description: "Ability to learn or understand or to deal with new situation")
puts "#{inteligence.name} created"
logique = Skill.create!(name: "Logic", description: "Ability to reason accordingly to strict principles of validity")
puts "#{logique.name} created"
reflexion = Skill.create!(name: "Thinking", description: "Capacity to use thought or rational judgement")
puts "#{reflexion.name} created"
savoir = Skill.create!(name: "Knowledge", description: "Awareness or familiarity gained by experience")
puts "#{savoir.name} created"
spiritualite = Skill.create!(name: "Faith", description: "Capacity to trust someone or something")
puts "#{spiritualite.name} created"
creativite = Skill.create!(name: "Creativity", description: "Capacity of imagination to create something")
puts "#{creativite.name} created"
social = Skill.create!(name: "Social", description: "Capacity to interact with other")
puts "#{social.name} created"
culture = Skill.create!(name: "Culture", description: "Specific knowledge on man-made achievements")
puts "#{culture.name} created"
puts Skill.count.to_s

# ----------------- CREATING USER-SKILLS -----------------

puts 'Creating User-Skills...'
user_force = UserSkill.create(user_id: user.id, skill_id: force.id, level: 40)
puts "#{user.name} Force is level #{user_force.level}"
user_endu = UserSkill.create(user_id: user.id, skill_id: endu.id, level: 42)
puts "#{user.name} endu is level #{user_endu.level}"
user_cardio = UserSkill.create(user_id: user.id, skill_id: cardio.id, level: 50)
puts "#{user.name} cardio is level #{user_cardio.level}"
user_agilite = UserSkill.create(user_id: user.id, skill_id: agilite.id, level: 52)
puts "#{user.name} agilite is level #{user_agilite.level}"
user_vitesse = UserSkill.create(user_id: user.id, skill_id: vitesse.id, level: 55)
puts "#{user.name} vitesse is level #{user_vitesse.level}"
user_souplesse = UserSkill.create(user_id: user.id, skill_id: souplesse.id, level: 50)
puts "#{user.name} souplesse is level #{user_souplesse.level}"
user_inteligence = UserSkill.create(user_id: user.id, skill_id: inteligence.id, level: 29)
puts "#{user.name} inteligence is level #{user_inteligence.level}"
user_logique = UserSkill.create(user_id: user.id, skill_id: logique.id, level: 27)
puts "#{user.name} logique is level #{user_logique.level}"
user_reflexion = UserSkill.create(user_id: user.id, skill_id: reflexion.id, level: 30)
puts "#{user.name} reflexion is level #{user_reflexion.level}"
user_savoir = UserSkill.create(user_id: user.id, skill_id: savoir.id, level: 50)
puts "#{user.name} savoir is level #{user_savoir.level}"
user_spiritualite = UserSkill.create(user_id: user.id, skill_id: spiritualite.id, level: 50)
puts "#{user.name} spiritualite is level #{user_spiritualite.level}"
user_creativite = UserSkill.create(user_id: user.id, skill_id: creativite.id, level: 50)
puts "#{user.name} creativite is level #{user_creativite.level}"
user_social = UserSkill.create(user_id: user.id, skill_id: social.id, level: 58)
puts "#{user.name} social is level #{user_social.level}"
user_culture = UserSkill.create(user_id: user.id, skill_id: culture.id, level: 44)
puts "#{user.name} culture is level #{user_culture.level}"
puts UserSkill.count.to_s
puts 'UserSkills done!'

# ----------------- CREATING SKINS -----------------

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

# ----------------- CREATING USER-SKINS -----------------

puts 'Creating one default skin to user...'
UserSkin.create(user_id: user.id, skin_id: skin4.id, selected: true)
puts UserSkin.count.to_s
puts 'UserSkin done!'

# ----------------- CREATING CATEGORIES -----------------

puts 'Creation category-database...'
sport = Category.create!(name: "Sport", description: "Do you want some endorphin? This category is for you")
puts "#{sport.name} done"
cinema = Category.create!(name: "Cinema", description: "Do you want to know all the best movies?, this category is for you")
puts "#{cinema.name} done"
puts "Category-database done!"

# ----------------- CREATING QUESTS AND GOALS -----------------


pushup_description = "To do a push-up, get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Contract your abs and tighten your core by pulling your belly button toward your spine. Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle. Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position. Do as many push-up as you can."
running_description = "To run, you just need to run while focusing on your breathing."
japanese_description = "Watch a lot of japanese movies and test your skills whith Quizzes."

partial = "mon bout de code"

def create_goal(partial, quest, niveau)
  threshold = 1
  goal_level = 1
  score = 100
  until goal_level <= 3
    Goal.create!(score: score, threshold: threshold, partial: partial, quest: quest )
    threshold *= (niveau * 1.5)
    score *= (niveau * 1.5)
    goal_level += 1
  end
end

def create_quest(name, description, category, niveau)
  rank = 1
  reward = 100
  while rank <= niveau
    quest = Quest.create!(name: name, rank: rank, description: description, category: category, reward: reward)
    create_goal(partial, quest, niveau)
    reward *= (niveau * 1.5)
    rank += 1
    return quest
  end
end

puts 'Creation quest-database...'

create_quest("push-up", pushup_description, sport, 3)
create_quest("running", running_description, sport, 5)
create_quest("Japanese movies", japanese_description, cinema, 4)

puts 'Quests-database created!'

# Goal.create!(
#   score: 100,
#   threshold: 1,
#   partial: "mon bout de code",
#   quest: pushup_easy
# )
# Goal.create!(
#   score: 150,
#   threshold: 2,
#   partial: "mon bout de code",
#   quest: pushup_easy
# )
# Goal.create!(
#   score: 200,
#   threshold: 5,
#   partial: "mon bout de code",
#   quest: pushup_easy
# )
# Goal.create!(
#   score: 150,
#   threshold: 2,
#   partial: "mon bout de code",
#   quest: pushup_medium
# )
# Goal.create!(
#   score: 200,
#   threshold: 5,
#   partial: "mon bout de code",
#   quest: pushup_medium
# )
# Goal.create!(
#   score: 300,
#   threshold: 10,
#   partial: "mon bout de code",
#   quest: pushup_medium
# )
# Goal.create!(
#   score: 20,
#   threshold: 5,
#   partial: "mon bout de code",
#   quest: pushup_hard
# )
# Goal.create!(
#   score: 400,
#   threshold: 12,
#   partial: "mon bout de code",
#   quest: pushup_hard
# )
# Goal.create!(
#   score: 900,
#   threshold: 25,
#   partial: "mon bout de code",
#   quest: pushup_hard
# )
# Goal.create!(
#   score: 100,
#   threshold: 2,
#   partial: "mon bout de code",
#   quest: running_easy
# )
# Goal.create!(
#   score: 100,
#   threshold: 5,
#   partial: "mon bout de code",
#   quest: running_easy
# )
# Goal.create!(
#   score: 100,
#   threshold: 7,
#   partial: "mon bout de code",
#   quest: running_easy
# )
# Goal.create!(
#   score: 100,
#   threshold: 10,
#   partial: "mon bout de code",
#   quest: running_medium
# )
# Goal.create!(
#   score: 100,
#   threshold: 15,
#   partial: "mon bout de code",
#   quest: running_medium
# )
# Goal.create!(
#   score: 100,
#   threshold: 22,
#   partial: "mon bout de code",
#   quest: running_medium
# )
# Goal.create!(
#   score: 100,
#   threshold: 28,
#   partial: "mon bout de code",
#   quest: running_hard
# )
# Goal.create!(
#   score: 39000,
#   threshold: 39,
#   partial: "mon bout de code",
#   quest: running_hard
# )
# Goal.create!(
#   score: 42_000,
#   threshold: 42,
#   partial: "mon bout de code",
#   quest: running_hard
# )
# Goal.create!(
#   score: 1000,
#   threshold: 1,
#   partial: "mon bout de code",
#   quest: japanese_movies_easy
# )
# Goal.create!(
#   score: 3000,
#   threshold: 3,
#   partial: "mon bout de code",
#   quest: japanese_movies_easy
# )
# Goal.create!(
#   score: 5000,
#   threshold: 5,
#   partial: "mon bout de code",
#   quest: japanese_movies_easy
# )
# Goal.create!(
#   score: 7000,
#   threshold: 7,
#   partial: "mon bout de code",
#   quest: japanese_movies_medium
# )
# Goal.create!(
#   score: 9000,
#   threshold: 9,
#   partial: "mon bout de code",
#   quest: japanese_movies_medium
# )
# Goal.create!(
#   score: 12_000,
#   threshold: 12,
#   partial: "mon bout de code",
#   quest: japanese_movies_medium
# )
# Goal.create!(
#   score: 15_000,
#   threshold: 15,
#   partial: "mon bout de code",
#   quest: japanese_movies_hard
# )
# Goal.create!(
#   score: 25_000,
#   threshold: 25,
#   partial: "mon bout de code",
#   quest: japanese_movies_hard
# )
# Goal.create(
#   score: 35_000,
#   threshold: 35,
#   partial: "mon bout de code",
#   quest: japanese_movies_hard
# )
puts Goal.count.to_s
puts 'Goal-database done!'

# ----------------- CREATING GOAL-SKILLS -----------------

puts 'Creating skills to quests...'
GoalSkill.create(goal_id: pushup_easy_goal.id, skill_id: force.id)
puts GoalSkill.count.to_s
puts 'UserSkin done!'

puts "SEED DONE"
