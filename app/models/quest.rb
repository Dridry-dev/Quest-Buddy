class Quest < ApplicationRecord
  belongs_to :category
  has_many :quest_skills, dependent: :destroy
  has_many :user_quests, dependent: :destroy
  has_many :users, through: :user_quests
  has_many :goals, dependent: :destroy
  has_many :skills, through: :quest_skills
  has_many :user_goals, through: :goals

  validates :name, presence: true
  validates :rank, presence: true, numericality: { in: 0..10 }
  validates :description, presence: true, length: { minimum: 20, message: 'Doit contenir au minimum 20 caractères.' }
  validates :reward, presence: true
  # validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { in: 0..1_000_000 }

  def finish_for(user)
    goal_ids = self.goals.map(&:id)
    user_goal_count = user.user_goals.where(goal_id: goal_ids).count
    goal_ids.count == user_goal_count
  end
end
