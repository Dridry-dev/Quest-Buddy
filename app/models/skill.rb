class Skill < ApplicationRecord
  has_many :user_skills
  has_many :users, through: :user_skills
  has_many :quests, through: :quest_skills

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 20, message: 'Doit contenir au minimum 20 caractères.' }
  validates :max_point, presence: true
  # validates :level, presence: true, numericality: { in: 0..99 }
end
