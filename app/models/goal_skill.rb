class GoalSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :goal
  has_many :quests, through: :goals

end
