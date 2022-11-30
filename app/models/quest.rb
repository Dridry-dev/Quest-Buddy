class Quest < ApplicationRecord
  belongs_to :category
  has_many :users, through: :user_quests
  has_many :goals, dependent: :destroy
  # has_many :goal_skills, through: :goals

  validates :name, presence: true
  validates :rank, presence: true, numericality: { in: 0..10 }
  validates :description, presence: true, length: { minimum: 20, message: 'Doit contenir au minimum 20 caractères.' }

  # validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { in: 0..1_000_000 }
  # validates :reward, presence: true
end
