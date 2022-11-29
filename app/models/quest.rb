class Quest < ApplicationRecord
  belongs_to :category
  has_many :users, through: :user_quests
  has_many :goals, dependent: :destroy
  # has_many :skills, through: :quest_skills

  validates :name, presence: true, uniqueness: true
  validates :rank, presence: true, numericality: { in: 0..10 }
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { in: 0..1_000_000 }
end
