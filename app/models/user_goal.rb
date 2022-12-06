class UserGoal < ApplicationRecord
  belongs_to :user
  belongs_to :goal
  #belongs_to :quest
end
