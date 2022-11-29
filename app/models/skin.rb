class Skin < ApplicationRecord
  has_many :users, through: :user_skins
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
