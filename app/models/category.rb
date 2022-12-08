class Category < ApplicationRecord
  has_many :quests, dependent: :destroy
  has_many :quest_skills, through: :quests

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 20, message: 'Doit contenir au minimum 20 caractères.' }
end
