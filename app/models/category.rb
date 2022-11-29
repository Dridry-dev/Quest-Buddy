class Category < ApplicationRecord
  has_many :quests, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 20, message: 'Doit contenir au minimum 20 caractères.' }
end
