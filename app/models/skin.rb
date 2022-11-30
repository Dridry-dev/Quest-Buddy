class Skin < ApplicationRecord
  has_many :user_skins
  has_many :users, through: :user_skins
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 20, message: 'Doit contenir au minimum 20 caractères.' }
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { in: 0..1_000_000 }
end
