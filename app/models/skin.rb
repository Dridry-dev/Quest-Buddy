class Skin < ApplicationRecord
  has_many :users, through: :user_skins

  validates :name, presence: true, uniqueness: true
end
