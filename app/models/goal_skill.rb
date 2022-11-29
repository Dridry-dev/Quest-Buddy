class GoalSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :goal
end
