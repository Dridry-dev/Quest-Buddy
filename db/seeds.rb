require "open-uri"
# require 'debug'
# binding.break

# ----------------- CLEANING SEED -----------------

puts 'Cleaning database 🧹🧹🧹'
User.destroy_all
Category.destroy_all
Quest.destroy_all
Goal.destroy_all
Skin.destroy_all
Skill.destroy_all
UserGoal.destroy_all
UserQuest.destroy_all
UserSkill.destroy_all
UserSkin.destroy_all
QuestSkill.destroy_all
puts 'Database cleaned'
puts '----------------------------------------------------'
puts '----------------------------------------------------'
puts '----------------------------------------------------'

# ----------------- CREATING USERS -----------------

puts 'Creation User...'
user = User.create!(name: "Buddy", email: "mail@gmail.com", password: "azerty", gold: 100)
puts "#{user.name} created"
puts '----------------------------------------------------'

# ----------------- CREATING SKINS -----------------
puts 'Creating Skins...'

file1 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1670493493/saitamapng_cxlq3w.png")
skin1 = Skin.new(name: "Saitama", description: '"100 pushups, 100 sit-ups, 100 squats, and a 10km run each days!"', price: 1000)
skin1.photo.attach(io: file1, filename: "saitama.png", content_type: "image/jpeg")
skin1.save!
puts "#{skin1.name} created"

# file2 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1670493493/captain_marvel_yh9beh.png")
# skin2 = Skin.new(name: "Cap Marvel", description: "She could have handle Thanos all by herself", price: 800)
# skin2.photo.attach(io: file2, filename: "captain_marvel.png", content_type: "image/jpeg")
# skin2.save!
# puts "#{skin2.name} created"

# file3 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Goku_clodrz.png")
# skin3 = Skin.new(name: "Goku", description: "KAAAAAMEEEEEEHAAAAMEEEEEHAAAAAAA", price: 800)
# skin3.photo.attach(io: file3, filename: "Goku.png", content_type: "image/jpeg")
# skin3.save!
# puts "#{skin3.name} created"

# file4 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1670493493/wonder_woman_qwgbks.png")
# skin4 = Skin.new(name: "WonderWoman", description: "Best lasso girl on earth", price: 750)
# skin4.photo.attach(io: file4, filename: "wonder_woman.png", content_type: "image/jpeg")
# skin4.save!
# puts "#{skin4.name} created"

# file5 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Superman_hett66.png")
# skin5 = Skin.new(name: "Superman", description: "It's a bird ? It's a plane ? It's Superman !", price: 750)
# skin5.photo.attach(io: file5, filename: "Superman.png", content_type: "image/jpeg")
# skin5.save!
# puts "#{skin5.name} created"

# file6 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1670493493/spider_gwen_b90ovj.png")
# skin6 = Skin.new(name: "Spider Gwen", description: "Spider Gwen, the best Spidey", price: 500)
# skin6.photo.attach(io: file6, filename: "spider_gwen.png", content_type: "image/jpeg")
# skin6.save!
# puts "#{skin6.name} created"

# file7 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1670493493/mikasa_jyg4fu.png")
# skin7 = Skin.new(name: "Mikasa", description: "Mikasa, es tu casa....?", price: 400)
# skin7.photo.attach(io: file7, filename: "mikasa.png", content_type: "image/jpeg")
# skin7.save!
# puts "#{skin7.name} created"

# file10 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1670245700/Ryan-removebg-preview_kvkyb6.png")
# skin10 = Skin.new(name: "Ryan's Abs", description: "Did you ask for some abs ?", price: 250)
# skin10.photo.attach(io: file10, filename: "RyanAbs.png", content_type: "image/jpeg")
# skin10.save!
# puts "#{skin10.name} created"

# file8 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1670493493/sailor_ps3rqp.png")
# skin8 = Skin.new(name: "Sailor Moon", description: "Sailor Moon, the one and only!", price: 200)
# skin8.photo.attach(io: file8, filename: "sailor.png", content_type: "image/jpeg")
# skin8.save!
# puts "#{skin8.name} created"

# file11 = URI.open("https://res.cloudinary.com/dpmbalij4/image/upload/v1669906121/Loki_ztoxtk.png")
# skin11 = Skin.new(name: "Loki", description: '"Loki, cool guy but never trust him!" - Thor', price: 200)
# skin11.photo.attach(io: file11, filename: "loki.png", content_type: "image/jpeg")
# skin11.save!
# puts "#{skin11.name} created"

puts "#{Skin.count} skins created"
puts '----------------------------------------------------'

# ----------------- CREATING USER-SKINS -----------------

# puts 'Creating one default skin to user...'
# UserSkin.create(user_id: user.id, skin_id: skin.id, selected: true)
# puts UserSkin.count.to_s
# puts 'UserSkin done!'
# puts '----------------------------------------------------'

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
intelligence = Skill.create!(name: "Intelligence", description: "Ability to learn or understand or to deal with new situation")
puts "#{intelligence.name} created"
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
puts '----------------------------------------------------'

# ----------------- CREATING USER-SKILLS -----------------

puts 'Creating User-Skills...'
user_force = UserSkill.create(user_id: user.id, skill_id: force.id, level: 28)
puts "#{user.name} Force is level #{user_force.level}"
user_endu = UserSkill.create(user_id: user.id, skill_id: endu.id, level: 30)
puts "#{user.name} endu is level #{user_endu.level}"
user_cardio = UserSkill.create(user_id: user.id, skill_id: cardio.id, level: 60)
puts "#{user.name} cardio is level #{user_cardio.level}"
user_agilite = UserSkill.create(user_id: user.id, skill_id: agilite.id, level: 33)
puts "#{user.name} agilite is level #{user_agilite.level}"
user_vitesse = UserSkill.create(user_id: user.id, skill_id: vitesse.id, level: 55)
puts "#{user.name} vitesse is level #{user_vitesse.level}"
user_souplesse = UserSkill.create(user_id: user.id, skill_id: souplesse.id, level: 42)
puts "#{user.name} souplesse is level #{user_souplesse.level}"
user_intelligence = UserSkill.create(user_id: user.id, skill_id: intelligence.id, level: 79)
puts "#{user.name} intelligence is level #{user_intelligence.level}"
user_logique = UserSkill.create(user_id: user.id, skill_id: logique.id, level: 84)
puts "#{user.name} logique is level #{user_logique.level}"
user_reflexion = UserSkill.create(user_id: user.id, skill_id: reflexion.id, level: 67)
puts "#{user.name} reflexion is level #{user_reflexion.level}"
user_savoir = UserSkill.create(user_id: user.id, skill_id: savoir.id, level: 50)
puts "#{user.name} savoir is level #{user_savoir.level}"
user_spiritualite = UserSkill.create(user_id: user.id, skill_id: spiritualite.id, level: 34)
puts "#{user.name} spiritualite is level #{user_spiritualite.level}"
user_creativite = UserSkill.create(user_id: user.id, skill_id: creativite.id, level: 64)
puts "#{user.name} creativite is level #{user_creativite.level}"
user_social = UserSkill.create(user_id: user.id, skill_id: social.id, level: 13)
puts "#{user.name} social is level #{user_social.level}"
user_culture = UserSkill.create(user_id: user.id, skill_id: culture.id, level: 44)
puts "#{user.name} culture is level #{user_culture.level}"
puts UserSkill.count.to_s
puts 'UserSkills done!'
puts '----------------------------------------------------'

# ----------------- CREATING CATEGORIES -----------------

puts 'Creation category-database...'
sport = Category.create!(name: "Sport", description: "Do you want some endorphin? This category is for you")
puts "#{sport.name} done"
cinema = Category.create!(name: "Cinema", description: "Do you want to know all the best movies? This category is for you")
puts "#{cinema.name} done"
music = Category.create!(name: "Music", description: "Do you want enjoy the word? This category is for you")
puts "#{music.name} done"
social = Category.create!(name: "Social", description: "Do you want to understand people? This category is for you")
puts "#{social.name} done"
theatre = Category.create!(name: "Theatre", description: "Do you want know how to act? This category is for you")
puts "#{theatre.name} done"
gaming = Category.create!(name: "Gaming", description: "Do you want to learn how to try hard? This category is for you")
puts "#{gaming.name} done"
science = Category.create!(name: "Science", description: "Do you want to work your brain out? This category is for you")
puts "#{science.name} done"
literature = Category.create!(name: "Literature", description: "Do you want to travel the word? This category is for you")
puts "#{literature.name} done"

puts "Category-database done!"
puts '----------------------------------------------------'

# ----------------- CREATING QUESTS, QUEST_SKILLS AND GOALS -----------------

puts 'Creation Quest-database & Goal-database...'

def create_goal(quest, threshold)
  score = 100
  multipicator = [1, 2, 5]
  3.times do |index|
    Goal.create!(score: score * multipicator[index], threshold: threshold * multipicator[index], quest: quest)
  end
end

def create_quest_skill(quest, category_skills)
  category_skills.each do |skill|
    QuestSkill.create(quest_id: quest.id, skill_id: skill.id)
  end
end

def create_quest(name, description, category, niveau, category_skills, partial)
  rank = 1
  reward = 100
  while rank <= niveau
    quest = Quest.create!(name: name, rank: rank, description: description, category: category, reward: reward, partial: partial)
    create_quest_skill(quest, category_skills)
    create_goal(quest, rank)
    reward *= niveau
    rank += 1
  end
end

pushup_description = "TO DO A PUSH-UP, TOUCH THE SCREEN WITH YOUR NOSE. Get on the floor on all fours, positioning your hands slightly wider than your shoulders. Don't lock out the elbows; keep them slightly bent. Extend your legs back so you are balanced on your hands and toes, your feet hip-width apart. Contract your abs and tighten your core by pulling your belly button toward your spine. Inhale as you slowly bend your elbows and lower yourself to the floor, until your elbows are at a 90-degree angle. Exhale while contracting your chest muscles and pushing back up through your hands, returning to the start position. Do as many push-up as you can."
pushup_skills = [force, endu, cardio]
create_quest("Push-up", pushup_description, sport, 3, pushup_skills, "click_to_count")

running_description = "To run, you just need to run while focusing on your breathing."
running_skills = [endu, cardio, vitesse]
create_quest("Running", running_description, sport, 5, running_skills, "geo_map")

abs_description = "6 pack, 12 pack, 18 pack. As much as you want."
abs_skills = [force, endu, agilite]
create_quest("Abs", abs_description, sport, 3, abs_skills, "click_to_count")

japanese_description = "Watch a lot of japanese movies and test your skills whith Quizzes."
japanese_movie_skills = [culture, savoir, social]
create_quest("Japanese movies", japanese_description, cinema, 4, japanese_movie_skills, "cine_quiz")

indian_description = "Watch a lot of indian movies and test your skills whith Quizzes."
indian_movie_skills = [culture, savoir, social]
create_quest("Indian movies", indian_description, cinema, 4, indian_movie_skills, "cine_quiz")

french_description = "Watch a lot of french movies and test your skills whith Quizzes."
french_movie_skills = [culture, savoir, social]
create_quest("French movies", french_description, cinema, 4, french_movie_skills, "cine_quiz")

italian_literature_description = "Read a lot of italian books and test your skills whith Quizzes."
italian_literature_skills = [culture, intelligence, savoir]
create_quest("Italian literature", italian_literature_description, literature, 4, italian_literature_skills, "click_to_count")

french_literature_description = "Read a lot of french books and test your skills whith Quizzes."
french_literature_skills = [culture, intelligence, savoir]
create_quest("French literature", french_literature_description, literature, 4, french_literature_skills, "click_to_count")

classic_literature_description = "Read a lot of Classic books and test your skills whith Quizzes."
classic_literature_skills = [culture, intelligence, savoir]
create_quest("Classic literature", classic_literature_description, literature, 4, classic_literature_skills, "click_to_count")

arithmetic_description = "complete thoses exercises to be better than your child"
arithmetic_skills = [intelligence, savoir, logique]
create_quest("Arithmetic", arithmetic_description, science, 4, arithmetic_skills, "click_to_count")

quick_calculation_description = "complete thoses exercises to be better than a calculator"
quick_calculation_skills = [intelligence, savoir, logique]
create_quest("Quick calculation", quick_calculation_description, science, 5, quick_calculation_skills, "click_to_count")

biology_description = "Read thoses books and test your skills whith Quizzes."
biology_skills = [culture, intelligence, savoir]
create_quest("Biology", biology_description, science, 6, biology_skills, "click_to_count")

rock_description = "Listen this playlist and test your skills whith Quizzes."
rock_skills = [culture, social, creativite]
create_quest("Rock", rock_description, music, 5, rock_skills, "click_to_count")

hip_hop_description = "Listen this playlist and test your skills whith Quizzes."
hip_hop_skills = [culture, social, creativite]
create_quest("Hip Hop", hip_hop_description, music, 5, hip_hop_skills, "click_to_count")

makina_description = "Listen this playlist and test your skills whith Quizzes."
makina_skills = [culture, social, creativite]
create_quest("Makina", makina_description, music, 1, makina_skills, "click_to_count")

moliere_description = "Watch this theater plays and test your skills whith Quizzes."
moliere_skills = [culture, intelligence, savoir]
create_quest("Moliere", moliere_description, theatre, 4, moliere_skills, "click_to_count")

classical_theatre_description = "Watch this greek theater plays and test your skills whith Quizzes."
classical_theatre_skills = [culture, intelligence, savoir]
create_quest("Classical", classical_theatre_description, theatre, 5, classical_theatre_skills, "click_to_count")

drama_theatre_description = "Watch this drama plays and test your skills whith Quizzes."
drama_theatre_skills = [culture, intelligence, savoir]
create_quest("Drama", drama_theatre_description, theatre, 4, drama_theatre_skills, "click_to_count")

meeting_description = "Watch those tutorials and test them at your next party."
meeting_skills = [culture, social, creativite]
create_quest("Meeting", meeting_description, social, 3, meeting_skills, "click_to_count")

talking_description = "Watch those tutorials and test them at your next party."
talking_skills = [savoir, social, culture]
create_quest("Talking", talking_description, social, 5, talking_skills, "click_to_count")

good_manners_description = "Watch those tutorials and test them at your next party."
social_skills = [culture, savoir, social]
create_quest("Good manners", good_manners_description, social, 4, social_skills, "click_to_count")

elden_ring_description = "Play this game to learn how to cry."
elden_ring_skills = [culture, spiritualite, logique]
create_quest("Elden ring", elden_ring_description, gaming, 4, elden_ring_skills, "click_to_count")

candy_crush_description = "Play this game to learn how to cry too."
candy_crush_skills = [culture, savoir, logique]
create_quest("Candy crush", candy_crush_description, gaming, 6, candy_crush_skills, "click_to_count")

god_of_war_description = "Play this game to learn how to cry but not for the same reason."
god_of_war_skills = [culture, intelligence, logique]
create_quest("God of war", god_of_war_description, gaming, 3, god_of_war_skills, "click_to_count")

puts Quest.count.to_s
puts Goal.count.to_s
puts QuestSkill.count.to_s
puts 'UserSkin done!'
puts 'Quests-database and Goal-database done!'
puts '----------------------------------------------------'

puts "SEED DONE"
