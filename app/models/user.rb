class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :skills, through: :user_skills
  has_many :skins, through: :user_skins
  has_many :goals, through: :user_goals
  has_many :quests, through: :user_quests

  validates :name, presence: true, uniqueness: true
  # validates :gold, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { in: 0..1_000_000 }
end
