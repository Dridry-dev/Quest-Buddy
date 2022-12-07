class Goal < ApplicationRecord
  belongs_to :quest
  has_many :user_goals
  has_many :users, through: :user_goals

  validates :partial, presence: true
  validates :threshold, presence: true
end
