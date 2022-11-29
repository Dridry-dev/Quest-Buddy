class Goal < ApplicationRecord
  belongs_to :quest
  has_many :users, through: :user_goals
  has_many :skills, through: :goal_skills

  validates :reward, presence: true, numericality: { in: 0..1_000_000 }
  validates :partial, presence: true
  validates :score, presence: true
  validates :rank, presence: true
  enum :rank, easy: 0, medium: 1, hard: 2, god_tier: 3
  # validates :progress, presence: true
end
