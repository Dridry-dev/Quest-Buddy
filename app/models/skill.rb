class Skill < ApplicationRecord
  has_many :user_skills
  has_many :goal_skills
  has_many :users, through: :user_skills
  has_many :goals, through: :goal_skills
  has_many :quests, through: :goal_skills

  SKILLS = %w[Endurance Force Rapidité Agilité Souplesse Cardio Inteligence Reflexion Logique Savoir Esprit Spiritualité Créativité Social Culture]

  validates :name, presence: true, inclusion: { in: SKILLS }
  validates :description, presence: true, length: { minimum: 20, message: 'Doit contenir au minimum 20 caractères.' }
  validates :max_point, presence: true
  # validates :level, presence: true, numericality: { in: 0..99 }
end
