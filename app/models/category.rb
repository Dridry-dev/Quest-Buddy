class Category < ApplicationRecord
  has_many :quests, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 20, message: 'Make a longer description please' }
end
