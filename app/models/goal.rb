class Goal < ApplicationRecord
  belongs_to :quest
  has_many :user_goals
  has_many :goal_skills
  has_many :users, through: :user_goals
  has_many :skills, through: :goal_skills

  validates :partial, presence: true
  validates :threshold, presence: true
end
